import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var x;
  var fortrue=0;
  var forfalse=0;
  @override
  Widget build(BuildContext context) {
    //fortrue=0;
    //forfalse=0;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Current Result: $x'),
            const SizedBox(height: 30),
            if (x == true)
              Container(color: Colors.green, width: 100, height: 100),
            if (x == false)
              Container(color: Colors.red, width: 100, height: 100),

            Container(
              width: 50,
              height: 50,
              color: x == true ? Colors.red : Colors.green,
            ),
            Text(fortrue.toString()),
            Text(forfalse.toString()),
            FloatingActionButton.extended(
              onPressed: () {
                setState(() {
                    fortrue=0;
                    forfalse=0;
                  
                  for (var i = 0; i < 10000; i++) {
                    
                    if (  Random().nextBool() == true) 
                    {
                      fortrue++;
                    }
                    else { forfalse++;}
                   // print(i);
                  }

                  x = Random().nextBool();
                });
              },
              label: const Text("Generate New Result"),
              icon: const Icon(Icons.casino),
            ),
          ],
        ),
      ),
    );
  }
}
