import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(home:MyApp()));
}
class MyApp extends StatelessWidget { 
  @override Widget build(c) {return Scaffold(body:
              Column(children:[
                 LampContainer1(),
                 LampContainer2(),
                 LampContainer3()
              ])); }
}
  
  class LampContainer1 extends StatefulWidget { 
  @override State createState() { return LampContainer1State(); }
                                              }
  class LampContainer1State extends State { 
    bool status=true;
    redLight()  { setState(   ()  {status=!status;});   } 

    start() async {   
          await  Future.delayed(Duration(seconds:5) , redLight ); }
                            
                         
    @override Widget build(c) {start(); 
                             var lampColor;
                             if(status==true) { lampColor=Colors.red;}
                             if(status==false) { lampColor= Colors.white;} 
                    return CircleAvatar(backgroundColor: lampColor);
                             
                             }
  }
  class LampContainer2 extends StatefulWidget { 
  @override State createState() { return LampContainer2State(); }
                                              }
  class LampContainer2State extends State { 
     bool status=true;
    redLight()  { setState(   ()  {status=!status;});   } 

    start() async {   
          await  Future.delayed(Duration(seconds:3) , redLight ); }
                            
                         
    @override Widget build(c) {start(); 
                             var lampColor;
                             if(status==true) { lampColor=Colors.yellow;}
                             if(status==false) { lampColor= Colors.white;} return CircleAvatar(backgroundColor: lampColor);}
  }
  class LampContainer3 extends StatefulWidget { 
  @override State createState() { return LampContainer3State(); }
                                              }
  class LampContainer3State extends State { 
     bool status=true;
    redLight()  { setState(   ()  {status=!status;});   } 

    start() async {   
          await  Future.delayed(Duration(seconds:1) , redLight ); }
                            
                         
    @override Widget build(c) {start(); 
                             var lampColor;
                             if(status==true) { lampColor=Colors.green;}
                             if(status==false) { lampColor= Colors.white;} return CircleAvatar(backgroundColor: lampColor);}
  }
