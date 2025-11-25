import 'package:flutter/material.dart';

bool red=false;
bool yellow=false;
bool green=true;
void main() {
  runApp( MaterialApp(home:MyApp()));
}
class MyApp extends StatelessWidget { 
  @override build(c) {
    return Column(children: [
      MyApp1(),MyApp2(),MyApp3()
    ]);
  }
}
class MyApp1 extends StatefulWidget {
  @override createState() { return MyAppState1();}
 }
class MyAppState1  extends State { 
  var myColor=Colors.grey;
   Widget build(c) { 
    Future.delayed(Duration(seconds:3),(){ 
       if(red==true)
      setState((){ 
        if(myColor==Colors.grey){
          myColor=Colors.red;}
        else { myColor=Colors.grey;}
         }); 
         yellow=false;});  
     return CircleAvatar(
      child:Text( red.toString()),
       radius:40,
      backgroundColor: myColor);
  }
}
class MyApp2 extends StatefulWidget {
  @override createState() { return MyAppState2();}
 }
class MyAppState2  extends State { 
  var myColor=Colors.grey;
   Widget build(c) { 
    Future.delayed(Duration(seconds:3),(){ 
       if(yellow==true)
      setState((){ 
        if(myColor==Colors.grey){
          myColor=Colors.yellow;}
        else { myColor=Colors.grey;}
         });
          yellow=false;
          red=true;
           });  
       return CircleAvatar(
        child:Text(yellow.toString()),
        radius:40,backgroundColor: myColor);
  }
}
class MyApp3 extends StatefulWidget {
  @override createState() { return MyAppState3();}
 }
class MyAppState3  extends State { 
  var myColor=Colors.grey;
   Widget build(c) { 
    Future.delayed(Duration(seconds:3),(){ 
      if(green==true)
      setState((){ 
        if(myColor==Colors.grey){
          myColor=Colors.green;}
        else { myColor = Colors.grey;}
         }); 
          green=false;
          yellow=true;
         });  
        
      return CircleAvatar(
        child:Text(green.toString()),
         radius:40,backgroundColor: myColor);
  }
}
