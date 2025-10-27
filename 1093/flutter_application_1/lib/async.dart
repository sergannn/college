import 'package:flutter/material.dart';

void main () { 
  print("its main");
  runApp(MaterialApp(home:MyApp())); }

class MyApp extends StatelessWidget { 
    
    Future<String> _fetchData() async { 
       var res = await "HELLO";
      return res;
    }
    @override 
    Widget build(BuildContext c) {
        print('its build');
    return Scaffold(body:Container(color:Colors.red,width:200,height:200,
    
       child: FutureBuilder<String>(
            future: _fetchData(),  
            builder: (context, snapshot) {
                    return Text('Data: ${snapshot.data}');
                })));
  
}
}
