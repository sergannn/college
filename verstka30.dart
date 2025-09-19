import 'package:flutter/material.dart';
void main() {
  runApp( MaterialApp(
      theme: ThemeData(
    textTheme: TextTheme(
     // bodyText1:
      bodyMedium : TextStyle(
        color: Colors.white,
      ),
    ),
  ),
    //color:Colors.red,
    home: myHomePage() ));
}
class myHomePage extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
          return Scaffold(
            
            backgroundColor:Color.fromARGB(255, 8, 56, 10),
            body:
          Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ 
                  topIcons(),
                  Text('Coca Cola'),
                  mainImage(),
                  dots(),
                  mainTable(),
                  SizedBox(height:25)
              ]
    ));}}


Widget topIcons() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
     Container(child: Icon(Icons.add)),
     Container(child: Icon(Icons.currency_bitcoin))
    ]);

}

Widget mainImage() { 
    return Container(height:100,
    child:Image.asset(
      //color:Colors.red.withOpacity(0.4),
      'assets/images/cola.png'),
    color:Colors.blue);
}

Widget dots() {
   
     return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
          CircleAvatar(radius:10),
          CircleAvatar(radius:13),
          CircleAvatar(radius:10),
     ]);

}
 

Widget mainTable(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
      
      tableGrid(),
      SizedBox(width:15),
      vertText(),
     
    ]);
}

Widget tableGridCell() {
  return Container(
    child:RichText(
      textDirection: TextDirection.ltr,
        text: TextSpan(
          //style: TextStyle(fontSize: 20),
          children: <TextSpan>[
            TextSpan(text: " Text1 \n ",style: TextStyle(color: Colors.white)),
            TextSpan(text: "Text2", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
          ],
      )),
    height:40,width:100,); //color:Colors.blue);
}
Widget tableGrid() {
  return Container(
  //  height:200,
    child:Column(
  //  mainAxisAlignment: MainAxisAlignment.spaceAround,
    children:[
    Row(children: [tableGridCell(),tableGridCell() ]),
    Row(children: [tableGridCell(),tableGridCell() ]),
    
  ]));
}


Widget vertText() {
  return RotatedBox(
  quarterTurns: -1, // 90 градусов
  child:   Text("vert text", style: TextStyle(color:Colors.yellow))
);
 
  
  }





