import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(home: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: 
        List.generate(100, 
          (i) { 
             return Text('h');
             } )
      ),
    );
  }
}
