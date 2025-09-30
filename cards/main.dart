import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class myWidget extends StatelessWidget { 
  @override
  build(BuildContext context) {
    return FloatingActionButton(
      child: Text("go somewhere"),
      onPressed: () {
            Navigator.push(context,
              MaterialPageRoute<void>(
      builder: (context) => MyHomePage(title:"a"),
    ),);
      });
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: FloatingActionButton(
        onPressed: () {
        
            Navigator.push(context,
              MaterialPageRoute<void>(
      builder: (context) => MyHomePage(title:"a"),
    ),);
        
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PlayingCard(),
            myWidget(),
            Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
     
    );
  }
}




class PlayingCard extends StatelessWidget {

  final int cardNumber;
  
  const PlayingCard({required cardNumber, required cardSuit });//{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Верхняя масть
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              '♠',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          
          // Изображение валета
          Container(
            width: 120,
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.black54,
              ),
            ),
          ),
          
          // Название карты
          Text(
            'ВАЛЕТ',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          
          // Нижняя масть
          Transform.rotate(
            angle: -3.14  , // 90 градусов
            child: Text(
              '♠',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
