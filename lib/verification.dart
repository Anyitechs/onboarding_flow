import 'package:danfo_app/otp.dart';
import 'package:flutter/material.dart';

class Verification extends StatelessWidget {
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
              child: TextFormField(),
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OtpVerification()
                  ));
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



