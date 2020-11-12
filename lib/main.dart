import 'package:flutter/material.dart';
import 'package:flutter_assignment/greeting.dart';

import './greeting.dart';
import './greetingControl.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  final _greetings = const [
    'Hello World!',
    'This is a cool Flutter app!',
    'My first Flutter assignment!'
  ];

  var _greetIndex = 0;

  void _changeText() {
    setState(() {
      _greetIndex = _greetIndex + 1;
    });
    print(_greetIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter World!'),
          ),
          body: _greetIndex < _greetings.length
              ? Column(
                  children: [
                    Greeting(_greetings[_greetIndex]),
                    GreetingControl(_changeText)
                  ],
                )
              : Container(
                  child: Greeting('Goodbye!'),
                )),
    );
  }
}

// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
