import 'package:flutter/material.dart';

class GreetingControl extends StatelessWidget {
  final Function changeText;

  GreetingControl(this.changeText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: changeText,
        color: Colors.deepPurple[400],
        child: Text('Next'),
      ),
    );
  }
}
