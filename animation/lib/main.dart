import 'package:animation/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(canvasColor: Colors.amberAccent.shade100),
      darkTheme: ThemeData(colorSchemeSeed: Colors.black, highlightColor: Colors.black26, brightness: Brightness.dark),
      home: const HomePage(),
      
    );
  }
}