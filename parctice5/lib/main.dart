import 'dart:math';

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
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int dicee = 1;

  void roll() {
    setState(() {
      dicee = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dicee'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.all(15),
                  child:
                      InkWell(
                        onDoubleTap: roll,
                        child: Image(
                          height: 200,
                          width: 200,
                          image: AssetImage('assets/images/dice-png-$dicee.png')),
                      ))
            ],
          ),
          ElevatedButton(
              onPressed: roll,
              child: Text(
                'PRESS',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ))
        ]),
      ),
    );
  }
}
