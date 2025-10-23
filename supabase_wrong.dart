import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/*
NEXT_PUBLIC_SUPABASE_URL=https://diatfsydzbqpfdzwcgil.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRpYXRmc3lkemJxcGZkendjZ2lsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjEyMTIxNzIsImV4cCI6MjA3Njc4ODE3Mn0.o5w70G_DuDtwR2MEaylJC68g-UTN5dzOJmVVmzVog8w
*/

class tableResult {

  var x=100;
  setX(val) { x=val;}
  getX() { return x;}
}

void main() async {


  print("starting app");
   await Supabase.initialize(
    url: 'https://diatfsydzbqpfdzwcgil.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRpYXRmc3lkemJxcGZkendjZ2lsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjEyMTIxNzIsImV4cCI6MjA3Njc4ODE3Mn0.o5w70G_DuDtwR2MEaylJC68g-UTN5dzOJmVVmzVog8w'
  );
  final select_result = await Supabase.instance.client
  .from('messages')
  .select();
 
 print(select_result[0]['username']);
 print(select_result[0]['text']);
 
  var tableRes = tableResult();
  tableRes.setX('privet');
  runApp( MainApp( res:tableRes ));
}

class MainApp extends StatelessWidget {
  
  const MainApp({super.key, required tableResult this.res});
final tableResult res;

  @override
  Widget build(BuildContext context) {
    print(res);
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
