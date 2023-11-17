import 'package:flutter/material.dart';
import 'dart:core';
import 'dart:ui';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        shadowColor: Colors.black,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

   var arrlist = [
    'mahi',
    'shahi',
    'rahi',
    'rabbi',
    'kamal',
    'tomal',
    'topu',
    'safi'
  ];
  DateTime? selected;
  Future<void> _func(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021, 8),
        lastDate: DateTime(2024));
    if (selectedDate != null && selectedDate != selected) {
      setState(() {
        selected = selectedDate;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            selected != null
                ? Text('${DateFormat.yMMMMd(selected)}')
                : Text('No selected'),
            ElevatedButton(
                onPressed: () {
                  _func(context);
                },
                child: Text(
                  'Press',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
