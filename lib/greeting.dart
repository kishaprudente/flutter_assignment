import 'package:flutter/material.dart';

class Greeting extends StatelessWidget {
  final String greetString;

  Greeting(this.greetString);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(40),
      child: Text(
        greetString,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
