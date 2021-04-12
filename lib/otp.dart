import 'package:danfo_app/home.dart';
import 'package:flutter/material.dart';

class OtpVerification extends StatelessWidget {
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
                  'One Time Password',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              child: TextFormField(),
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Home()
                  ));
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
