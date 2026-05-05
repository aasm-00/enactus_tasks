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
      title: 'Counter App',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.amber),
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter(){
    setState(() {

      if(_counter == 0){}

      else{_counter--;}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),



            Row(
              spacing: 50,
              mainAxisAlignment: .center,

              children:
              [
                ElevatedButton(onPressed: _decrementCounter, child: Icon(Icons.minimize)),

                ElevatedButton(
                    onPressed: (){setState(() {_counter = 0;});},
                    child: Text("Reset")
                ),

                ElevatedButton(onPressed: _incrementCounter, child: Icon(Icons.add),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
