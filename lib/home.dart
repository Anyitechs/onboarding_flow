import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        // automaticallyImplyLeading: false,
        title: Text(
          'Home'
        ),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.0, top: 10.0),
            child: Text(
              'Welcome to Danfo Logistics!',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}
