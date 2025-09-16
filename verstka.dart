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
        backgroundColor: Colors.green,
        body: Column(
          children: [
            //строка
            verh(),
            Center(
              child: Text(
                "BIG MAC!!!!!!!!!!!",
                style: TextStyle(color: Colors.white),
              ),
            ),
            forImage(),
            Container(height: 20, width: 100, color: Colors.green),
            Center(child: Text("some text")),
            tabl(),
          ],
        ),
      ),
    );
  }

  Widget verh() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Icon(Icons.access_time_filled),
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
        Container(
          child: Icon(Icons.align_horizontal_right_sharp),
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ],
    ); //конец строки
  }

  Widget tabl() {
    return Container(
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //'табличка'
          Container(
            color: Colors.yellow.withOpacity(0.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              spacing: 20.0,
              children: [
                tableRow(),
                tableRow(),

                //  tableRow(),
                //  tableRow()
              ],
            ),
          ),
          //вертикальная надпись
          vertText(),
        ],
      ),
    );
  }

  Widget vertText() {
    return RotatedBox(
      quarterTurns: 3,
      child: Text('Vertical Text', style: TextStyle(color: Colors.yellow)),
    );
  }

  Widget tableRow() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 20.0,
      children: [
        Container(
          color: Colors.amber,
          child: Column(
            children: [
              Text('550 cal', style: TextStyle(color: Colors.blue)),
              Text('Calories', style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
        Container(
          color: Colors.brown,
          child: Column(
            children: [
              Text('30G', style: TextStyle(color: Colors.blue)),
              Text('Total Fat', style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
      ],
    );
  }

  Widget forImage() {
    return Center(
      child: Container(
        height: 200,
        child: Center(
          child: Image.network(
            'https://yt3.googleusercontent.com/H6SFzn3lUGawmi7AXp1qgjXm3rB1eTZUzVVyqmErLivjro6I89isA3CsrqoEiu03I7C_2s1L=s900-c-k-c0x00ffffff-no-rj',
          ),
        ),
      ),
    );
  }
}
