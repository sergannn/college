import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
void main()  async  {

  print("await started");
    await Supabase.initialize(//это секрет
    url: 'https://frvexfoezbscdbcvuxas.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZydmV4Zm9lemJzY2RiY3Z1eGFzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTk3NDY4ODgsImV4cCI6MjA3NTMyMjg4OH0.XDr9MFxBMX0P42a4MwjstxtZeh_Caqdyrfpfr7d9ec8',
  );

  print("awaited");
  var finances;
  finances = await  Supabase.instance.client
      .from('finances')
      .select();
  print(finances[0]['title']);


  runApp( MyApp(finances:finances));
}

class MyApp extends StatelessWidget {

  final finances;
  const MyApp({super.key, this.finances});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {




    return MaterialApp(
      title: 'Flutter App!!',
      home:  MyHomePage(finances: finances),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.finances});


  
  final finances;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('finances'),
      ),
      body:

      // print(finances[0]['title']); 
        ListView.builder(
          itemCount: widget.finances.length, 
          itemBuilder:  (context, index)  {
            return 
              Row(children:[
                Text(   widget.finances[index]['title']            ),
                Text(":"),
                Text(   widget.finances[index]['amount'].toString()            )]);  
          
        }) ,
      
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
  var inserted= await         Supabase.instance.client.from('finances')
    .insert({'title': 'Новая трата', 'amount': 554});
        },//_incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
