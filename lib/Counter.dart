import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}
class _CounterState extends State<Counter> {
  int counter = 0;

  void _increment() {
    setState(() {
      counter++;
    });
  }

  void _decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text('Count: $counter'),
        RaisedButton(
          onPressed: _increment,
          child: Text('Increment'),
          padding: EdgeInsets.all(20),
        ),
        RaisedButton(
          onPressed: _decrement,
          child: Text('Decrement'),
          padding: EdgeInsets.all(20),
        ),
      ],
    );
  }
}