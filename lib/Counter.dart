import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  StreamController<int> count;

  @override
  void initState() {
    super.initState();
    count = new StreamController<int>();
    count.add(0);
  }

  void _increment() {
    setState(() {
      counter++;
      count.add(counter);
    });
  }

  void _decrement() {
    setState(() {
      counter--;
      count.add(counter);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        StreamBuilder(
            stream: count.stream,
            builder: (BuildContext context, snapshot) {
              return new Text(
                snapshot.data.toString(),
              );
            }),
        Button(),
      ],
    );
  }
}

class Button extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  int counter = 0;
  StreamController<int> count;

  @override
  void initState() {
    super.initState();
    count = new StreamController<int>();
    count.add(0);
  }

  void _increment() {
    setState(() {
      counter++;
      count.add(counter);
    });
  }

  void _decrement() {
    setState(() {
      counter--;
      count.add(counter);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        RaisedButton(
          onPressed: _increment,
          child: Text('Increment'),
          padding: EdgeInsets.all(20),
        ),
        RaisedButton(
          onPressed: _decrement,
          child: Text('Decrement'),
          padding: EdgeInsets.all(20),
        )
      ],
    );
  }
}