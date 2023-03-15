import 'package:flutter/material.dart';
import 'package:flutter_assignment/textInstruction.dart';
import 'package:flutter_assignment/textControl.dart';

import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _value = 0;

  void _resetLottery() {
    setState(() {
      _value = 0;
    });
  }

  void _loterry() {
    setState(() {
      var value = Random();
      _value = value.nextInt(35);
      print(_value);
    });

    if (_value == 25) {
      print('You have won the lottery');
    } else {
      print('better luck next time');
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print(_value);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('The Fool Monte'),
        ),
        body: _value == 25
            ? TextControl(
                value: _value,
                buttonHandler: _resetLottery,
              )
            : TextInstruction(
                value: _value,
                selectHandler: _loterry,
              ),
      ),
    );
  }
}
