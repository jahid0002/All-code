// ignore_for_file: sized_box_for_whitespace

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
      home: HomeScren(),
    );
  }
}

class HomeScren extends StatefulWidget {
  const HomeScren({super.key});

  @override
  State<HomeScren> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  int dicee1 = 1;
  int dicee2 = 2;
  int dicee3 = 3;
  int dicee4 = 4;
  int dicee5 = 5;
  int dicee6 = 6;

  void roll() {
    setState(() {
      dicee1 = Random().nextInt(6) + 1;
      dicee2 = Random().nextInt(6) + 1;
      dicee3 = Random().nextInt(6) + 1;
      dicee4 = Random().nextInt(6) + 1;
      dicee5 = Random().nextInt(6) + 1;
      dicee6 = Random().nextInt(6) + 1;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.white70,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: InkWell(
                    onTap: roll,
                    child: Image(
                      height: 200,
                      width: 200,
                      image: AssetImage('assets/images/dice-png-$dicee1.png'),

                      // color: Colors.amber,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  height: 200,
                  width: 200,
                  // color: Colors.amber,
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  height: 200,
                  width: 200,
                  // child: Image(image: AssetImage('assets/images/dice-png-1.png')),
                  // color: Colors.amber,
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: InkWell(
                    onTap: roll,
                    child: Image(
                      // margin: EdgeInsets.all(8),
                      height: 200,
                      width: 200,
                      image: AssetImage('assets/images/dice-png-$dicee2.png'),
                      // color: Colors.blueGrey
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: roll,
                    child: Text(
                      'ROLL',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ))
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  height: 200,
                  width: 200,
                  child: InkWell(
                    onTap: roll,
                    child: Image(
                      image: AssetImage('assets/images/dice-png-$dicee3.png'),
                    ),
                  ),
                  // color: Colors.deepOrange,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  height: 200,
                  width: 200,
                  // color: Colors.blueGrey,
                  child: InkWell(
                      onTap: roll,
                      child: Image(
                          image:
                              AssetImage('assets/images/dice-png-$dicee4.png'))),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  height: 200,
                  width: 200,
                  child: InkWell(
                      onTap: roll,
                      child: Image(
                          image:
                              AssetImage('assets/images/dice-png-$dicee5.png'))),
                  // color: Colors.indigoAccent,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  height: 200,
                  width: 200,
                  child: InkWell(
                      onTap: roll,
                      child: Image(
                          image:
                              AssetImage('assets/images/dice-png-$dicee6.png'))),
                  // color: Colors.lightBlue,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  height: 200,
                  width: 200,
                  child: InkWell(
                      onTap: roll,
                      child: Image(
                          image:
                              AssetImage('assets/images/dice-png-$dicee1.png'))),
                  // color: Colors.green,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  height: 200,
                  width: 200,
                  // color: Colors.black54,
                  child: InkWell(
                      onTap: roll,
                      child: Image(
                          image:
                              AssetImage('assets/images/dice-png-$dicee2.png'))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
