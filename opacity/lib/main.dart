import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
 
 

  var opacity = 0.0;
  bool flag = true;

  void animated() {
    if (flag) {
      setState(() {
        opacity = 1.0;
        flag = false;
      });
    } else {
      setState(() {
        opacity = 0.0;
        flag = true;
      });
    }
  }

   @override
     void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
          if (flag) {
        setState(() {
          opacity = 1.0;
          flag = false;
        });
      } else {
        setState(() {
          opacity = 0.0;
          flag = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Opacity',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: Colors.amber.shade100,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                duration: Duration(seconds: 2),
                opacity: opacity,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.deepOrange.shade200,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    animated();
                  },
                  child: Text('Click')),
            ],
          ),
        ),
      ),
    );
  }
}
