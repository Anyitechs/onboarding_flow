import 'package:danfo_app/otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();

  saveNumber(phoneNumber) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.get('phone')) {
      return prefs.get('phone');
    } else {
      await prefs.setString('phone', phoneNumber.toString());
    }
  }

  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print('phone number from local:');
    print(prefs.get('phone'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Verify'
        ),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage(
                  'images/otp.jpg'
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                'Phone Verification',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'We\'ll send you a',
                  style: TextStyle(
                    fontSize: 17.0
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'One Time Password',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
                'on this mobile number',
              style: TextStyle(
                fontSize: 17.0
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                'Enter Mobile Number',
                style: TextStyle(
                  fontSize: 17.0
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  controller: myController,
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    new WhitelistingTextInputFormatter(
                      new RegExp(r'^[0-9]*$')
                    ),
                    new LengthLimitingTextInputFormatter(11)
                  ],
                  validator: (String value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            FlatButton(
                color: Colors.yellow,
                shape: ContinuousRectangleBorder(
                  // borderRadius: BorderRadius.all(Radius.)
                ),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    saveNumber(myController.text);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => OtpVerification()
                    ));
                    getData();
                  } else {
                    print('invalid form');
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 110.0, vertical: 15.0),
                  child: Text(
                    'GET OTP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0
                    ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}



