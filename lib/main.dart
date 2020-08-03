import 'dart:developer';
import 'Counter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
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
      body: Column(
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


