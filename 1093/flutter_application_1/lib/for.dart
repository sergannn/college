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
        children: [
          for (var i = 0; i < 100; i++)
            Row(
              children: [
                for (var j = 0; j < 100; j++)
                  
                  if(i%2==0) 
                      if ( j % 2 == 0)
                        Container(width: 10, height: 10, color: Colors.black)
                      else
                        Container(width: 10, height: 10, color: Colors.pink)
                  else 
                      if ( j % 2 == 0)
                        Container(width: 10, height: 10, color: Colors.pink)
                      else
                        Container(width: 10, height: 10, color: Colors.black)
              ],
            ),
        ],
      ),
    );
  }
}
