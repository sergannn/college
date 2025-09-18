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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text(''),
      ),
      body: Column(
       
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            header(),
            Text("HELLO"),
            mainImage(),
            circles(3,50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
            myTable(),
            vertText()
          ])
          ],
        ),
      

    );
  }
}

Widget header() {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [Icon(Icons.add),Icon(Icons.add)],);
}

Widget mainImage() {
  return Container(width: double.infinity,height:100,color:Colors.red);
}

Widget circles(length, size) { 
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
             List.generate(length, (index) {
                return Container(
                  child:Center(child:Text(  '$index'   )),
                  width: size,
                  height: size,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ));  })); 
                   
}

Widget myTable() {
            
         

  return Column(
    children: [
      Row(children: [tableContainer('a','b'),tableContainer('a','b')],),
      Row(children: [tableContainer('a','b'),tableContainer('a','b')],),
    ]
  );
}

Widget vertText() {
  return Container(
   child:
    RotatedBox(
  quarterTurns: -1,
  child: Text('Ваш текст'),
)
  );
}

Widget tableContainer(title,description) {
   Widget cellText(title,description) { 
            return RichText(
            text: TextSpan(  
              children: [
                TextSpan(text: '$title\n', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: '$description'),
              ],
            ),
          );
          }
  return Container(child: Center(child:cellText(title,description)),
  width:150,height:80,
   decoration: BoxDecoration(
                    color: Colors.blue,
                  
                  ));
}
