import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget currencyMenuItem() {
    return 
        Container(
       padding: EdgeInsetsGeometry.only(left:10,top:10,bottom:10,right:50,),
       color:Colors.grey,
       child:  
      Column(
      children: [
        CircleAvatar(radius: 10),
        Text("some text"),
        Text("some text"),
      ]
    ));
  }

  Widget calendarItem() {
    return Container(
      child: Column(children: [Text("date"), Text("date2"), Text("date3")]),
    );
  }

  Widget calendar() {
    return SingleChildScrollView(
           scrollDirection: Axis.horizontal,
            child: Row(
              spacing:10,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        calendarItem(),
        calendarItem(),
        calendarItem(),
        calendarItem(),
        calendarItem(), calendarItem(),
        calendarItem(),
        calendarItem(),
        calendarItem(),
        calendarItem(), calendarItem(),
        calendarItem(),
        calendarItem(),
        calendarItem(),
        calendarItem(),
      ],
    ));
  }

  Widget currencyList() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(child: Row(children: [Text('1'), Text('___2')])),
        Container(color: Colors.red, width: 100, height: 100),
      ],
    );
  }

  Widget currencyMenu() {
    
    return  Center(child:
      //alignment: Alignment.centerLeft,
      //     alignment: AlignmentGeometry.xy(  x:0 ,y:0   ),
     // padding: EdgeInsetsGeometry.all(30),child:
               
      SingleChildScrollView(
           scrollDirection: Axis.horizontal,
            child:
      Row(
        spacing:10,
     // mainAxisAlignment: MainAxisAlignment.center,
      children: [currencyMenuItem(), currencyMenuItem(), currencyMenuItem(), currencyMenuItem(),currencyMenuItem()],
    )));
  }

  Widget headerTop() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(height: 50, width: 100, child: CircleAvatar(radius: 20)),
        Container(
            padding: EdgeInsetsGeometry.all(5),
          height: 50, color: Colors.white,child:Center(child: Text("Payday in a week"))),
      ],
    );
  }

  Widget headerContent() {
    return Row(
      children: [
        Column(
          //      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Container(
              //   color: Colors.red,
              //   height: 20,
              width: 100,
              child: Text("first text", style: TextStyle(color: Colors.white)),
            ),
            Container(
              //    color: Colors.black,
              //    height: 20,
              width: 100,
              child: Text("second text", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 15),
          ],
        ),
      ],
    );
  }

  Widget header() {
    return Container(
      //alignment: Alignment.centerLeft,
      //     alignment: AlignmentGeometry.xy(  x:0 ,y:0   ),
      padding: EdgeInsetsGeometry.all(30),
      decoration: BoxDecoration(
        color: Colors.red,
        image: const DecorationImage(
          image: NetworkImage(
            'https://cdn.bhdw.net/im/circuit-digital-art-wallpaper-96186_w635.webp',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(children: [headerTop(), headerContent()]),
    );
  }
 Widget planningAhead() { return   Container(
      //alignment: Alignment.centerLeft,
      //     alignment: AlignmentGeometry.xy(  x:0 ,y:0   ),
      padding: EdgeInsetsGeometry.all(30),child:
                Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container( width: 100, child:Text("text 1")),
        Container( width: 100,child:Text("text 2")),
      ],
    )); }
  @override
  Widget build(BuildContext context) {
    // Column()

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
          SingleChildScrollView(child: Column(children:[    
        planningAhead(),
              currencyMenu(), 
                planningAhead(),
              calendar(), 
              currencyList(),
           
            ])),
            
            ],
            
          ),
        ),
      ),
    );

    //  Center(child: Text('Hello, World!'))  ),

    //    Container();
  }
}
