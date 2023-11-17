import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
      title: Text('flutter_container'),
          ),
      
      body:Center(child:  Container(
        width: 500,
        height: 400,
        color: Color.fromARGB(255, 26, 200, 52),
        child: Center(
            child: Container(
                width: 400,
                height: 305,
                color: Color.fromARGB(255, 118, 10, 10),
                child: Center(
                  child: Container(
                        width: 200,
                        height: 150,
                        color: Color.fromARGB(255, 238, 216, 216),
                        child: Center(
                          child: Container(
                                width: 150,
                                height: 100,
                                color: Color.fromARGB(255, 8, 7, 7),
                                child: Center(
                                  child: Container(
                                        width: 100,
                                        height: 90,
                                        color: Color.fromARGB(255, 118, 10, 10),
                                        child: Center(
                                          child: Container(
                                                width: 80,
                                                height: 70,
                                                color: Color.fromARGB(255, 28, 202, 77),
                                                child: Center(
                                                  child: Container(
                width: 50,
                height: 30,
                color: Color.fromARGB(255, 15, 5, 91),
                child: Center(
                  child: Text("Jahid", style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    fontStyle:FontStyle.italic,
                    color: Colors.amber, 
                    backgroundColor: Color.fromARGB(66, 244, 23, 23),
                  ),),
                ))
                ))
                                            
                                        ))
                                ))
                        ))
                  
                ))),
     
      )),
     
     
    
      );
  }
}
