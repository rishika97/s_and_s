import 'dart:async';
import 'dart:developer';
import 'Counter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'S and S',
    home: Hello()
  ));
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('S and S',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),),
        centerTitle: true,
      ),
      body: new Column(
        children: <Widget>[
          SizedBox(height: 50),
          Text('Hello',
            style: TextStyle(
                fontSize: 20,
                color: Colors.black
            ),
          ),
          SizedBox(height: 50),
          Counter()
        ],
      ),
    );
  }
}

//class Counter extends StatefulWidget {
//  @override
//  _CounterState createState() => _CounterState();
//}
//
//class _CounterState extends State<Counter> {
//  int counter = 0;
//  StreamController<int> count;
//
//  @override
//  void initState() {
//    super.initState();
//    count = new StreamController<int>();
//    count.add(0);
//  }
//
//  void _increment() {
//    setState(() {
//      counter++;
//      count.add(counter);
//    });
//  }
//
//  void _decrement() {
//    setState(() {
//      counter--;
//      count.add(counter);
//    });
//  }
//  @override
//  Widget build(BuildContext context) {
//    return Row(
//      mainAxisSize: MainAxisSize.max,
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//      children: <Widget>[
//        StreamBuilder(
//            stream: count.stream,
//            builder: (BuildContext context, snapshot) {
//              return new Text(
//                snapshot.data.toString(),
//              );
//            }),
//        RaisedButton(
//          onPressed: _increment,
//          child: Text('Increment'),
//          padding: EdgeInsets.all(20),
//        ),
//        RaisedButton(
//          onPressed: _decrement,
//          child: Text('Decrement'),
//          padding: EdgeInsets.all(20),
//        ),
//      ],
//    );
//  }
//}
