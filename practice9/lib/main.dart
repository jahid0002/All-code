import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(
        shadowColor: Colors.amber,
        indicatorColor: Colors.black12,
        inputDecorationTheme: Theme.of(context).inputDecorationTheme,
      ),
      home: HomeScren(),
    );
  }
}


