import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home'
        ),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Text(
            'Welcome to Danfo Logistics!'
          )
        ],
      ),
    );
  }
}