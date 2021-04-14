import 'package:danfo_app/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OtpVerification extends StatefulWidget {
  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  final _formKey = GlobalKey<FormState>();

  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get('phone');
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
                'OTP Verification',
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
                  'Enter the OTP sent to ',
                  style: TextStyle(
                      fontSize: 17.0
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'your number',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    new LengthLimitingTextInputFormatter(4)
                  ],
                  validator: (String value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter OTP to proceed';
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Didn\'t receive the OTP? '
                ),
                Text(
                  'RESEND OTP',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
            // ),
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Home()
                    ));
                  } else {
                    print('invalid OTP');
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 15.0),
                  child: Text(
                    'VERIFY & PROCEED',
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
