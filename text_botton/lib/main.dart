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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        appBar: AppBar(
          
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
         
          title: Text("Practice apps"),
        ),
        backgroundColor: Colors.blue,
        body: 
           ElevatedButton(
            child: Text("press key", style: TextStyle(
              color: Colors.black,
             // backgroundColor: const Color.fromARGB(255, 221, 210, 210),
              fontSize: 20,
              fontWeight: FontWeight.bold,
              
              ),),
            onPressed: () {
              _incrementCounter();
            },
            onLongPress: () {
              _incrementCounter();
              _incrementCounter();
            },
          ),
        
        
        );
  }
}
