import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(home: myApp()));
}

class myApp extends StatefulWidget {
  @override
  CounterState createState() {
    return CounterState();
  }
}

class CounterState extends State<myApp> {
  double x = 10;
  int y=1;
  void changeColor() {
    if(x>250 || x<10) { y*=(-1); }
    setState(() {
      x += y;
      print(x);
    });

  }

  @override
  Widget build(context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final periodicTimer = Timer.periodic(const Duration(microseconds: 10), (
            timer,
          ) {
            changeColor();
            // Update user about remaining time
          });
        },
      ),
      body: Padding(
        padding: EdgeInsets.only(left: x),
        child: Text(x.toString(), style: TextStyle(fontSize: x)),
      ),
    );
  }
}
