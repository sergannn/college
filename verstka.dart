import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            //строка
            verh(),
            Center(child: Text("hello")),
            forImage(),
            Center(child: Text("some text")),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  'Текст 1',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                Text(
                                  'Текст 2',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  'Текст 1',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                Text(
                                  'Текст 2',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  'Текст 1',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                Text(
                                  'Текст 2',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  'Текст 1',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                Text(
                                  'Текст 2',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Text("Helllooooo"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget verh() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(width: 100, height: 100, color: Colors.blue),
        Container(width: 100, height: 100, color: Colors.red),
      ],
    ); //конец строки
  }

  Widget forImage() {
    return Center(
      child: Container(
        height: 200,
        child: Center(child: Container(color: Colors.yellow, height: 50)),
        color: Colors.red,
      ),
    );
    Container(height: 20, width: 100, color: Colors.green);
  }
}
