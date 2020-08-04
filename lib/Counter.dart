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
        StreamBuilder<int>(
            stream: count.stream,
            builder: (BuildContext context, snapshot) {
              return new Count(snapshot.data);
            }),
        Button((){
          _increment();
        },(){
          _decrement();
        }),
      ],
    );
  }
}

class Count extends StatelessWidget{
  final int count;
  Count(this.count);
  Widget build(BuildContext context) {
    return Text(count.toString());
  }
}

class Button extends StatelessWidget {
  Function() _increment;
  Function() _decrement;
  Button(this._increment, this._decrement);


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