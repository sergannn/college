import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // === Блок 1: Красный контейнер ===
            Container(color: Colors.green, child: header()),

            SizedBox(height: 20),
              SingleChildScrollView(child:
                  Column( children: [  
            centerContent(),

            SizedBox(height: 20),

            footer(),
            SizedBox(height:400),
            Text("bottom")
          ]))
        ]),
      ),
    ));
  }
}
      

Widget header() {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.red, width: 2),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Круглая аватарка
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.green[100],
                shape: BoxShape.circle,
                border: Border.all(color: Colors.green, width: 2),
              ),
              child: Center(
                child: Text('PHOTO', style: TextStyle(fontSize: 10)),
              ),
            ),
            // Кнопка / текст справа
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'BUTTON "ТЕКСТ"',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        // Два текстовых поля
        Container(
          padding: EdgeInsetsGeometry.all(10),
          height: 40,
          width: double.infinity,
          color: Colors.green[800],
          //margin: const EdgeInsets.only(bottom: 8),
          child: Text('ТЕКСТ'),
        ),
        Container(
          height: 40,
          padding: EdgeInsetsGeometry.all(10),
          width: double.infinity,
          color: Colors.green[200],
          child: Text('ТЕКСТ'),
        ),
      ],
    ),
  );
}

Widget centerContent() {
  return // === Блок 2: Зелёный + Розовый ===
  Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.red, width: 2),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 80,
                color: Colors.green[200],
                margin: const EdgeInsets.only(right: 8),
                child: Center(child: Text('ТЕКСТ')),
              ),
            ),
            Expanded(
              child: Container(
                height: 80,
                color: Colors.green[200],
                child: Center(child: Text('ТЕКСТ')),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        firstScrollRow(),
      ],
    ),
  );
}

Widget firstScrollRow() {
  return SafeArea(
    child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 10,
        children: [
          ...List.generate(50, (index) {
            return Container(
              height: 100,
              color: Colors.pink[100],
              child: Center(child: Text('SCROL')),
            );
          }),
        ],
      ),
    ),
  );
}

Widget footer() {
  // === Блок 3: Аналогично блоку 2 ===
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.red, width: 2),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 40,
                color: Colors.green[200],
                margin: const EdgeInsets.only(right: 8),
                child: Center(child: Text('ТЕКСТ')),
              ),
            ),
            Expanded(
              child: Container(
                height: 40,
                color: Colors.green[200],
                child: Center(child: Text('ТЕКСТ')),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Container(
          height: 100,
          color: Colors.pink[100],
          child: Center(child: Text('SCROL')),
        ),
      ],
    ),
  ); //end block2
}
