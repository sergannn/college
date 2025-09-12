import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Flutter Example App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
 return Scaffold(
      body: Column(
        children: [ 
          Row(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[Text('left'),Text('right')]),
          Center(child:Text('some text')),
          Image.network(
            width:100,
            'https://static.vecteezy.com/system/resources/previews/022/598/687/non_2x/tasty-beef-burger-png.png'),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '550 Cal'   ),
            Text(
              'Calories'
            ),
          ],
        ),
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(   style:TextStyle(color:Colors.red),
              'hello'
            ),
            Text(
              'hello'
            ),
          ],
        ),
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Text('hello'
            ),
            Text(
              'hello'
            ),
          ],
        ),
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              style:TextStyle(color:Colors.red),
              'hello'
            ),
            Text(
              'hello'
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.red,
                width: 10,
            ),
        ),
         
          width:double.infinity
          ,height:100)
      ])
    );
  }
}
