import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(c) {
    return 
    Scaffold(body:Center(child:Column(children:[
        MyFirstButtonWidget(),
        MySecondButtonWidget()
    ])));
  }
}


class MyFirstButtonWidget extends StatefulWidget {
  const MyFirstButtonWidget({super.key});

  @override
  createState() { return MyFirstButtonState(); }
}
class MyFirstButtonState extends State { 
  @override
  Widget build(c) {
    print("rebuilding");
    return 
        Row(children: [
          Text(Random().nextInt(10).toString()),
          FloatingActionButton(child:Text("refresh"),
              onPressed:(){setState((){});}),
          Text("HELLO FIRST BUTTON")
            ]);
    
  }
}


class MySecondButtonWidget extends StatefulWidget {
  const MySecondButtonWidget({super.key});

  @override
  createState() { return MySecondButtonState();
  }
}
class MySecondButtonState extends State { 
  @override
  Widget build(c) {
    print("rebuilding");
    return 
        Row(children: [
          Text(Random().nextInt(10).toString()),
          FloatingActionButton(child:Text("refresh"),
              onPressed:(){setState((){});}),
          Text("HELLO FIRST BUTTON")
            ]);
    
  }
}
