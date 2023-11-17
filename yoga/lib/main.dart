import 'package:flutter/material.dart';
import 'package:yoga/need2.dart';
import 'package:yoga/pages/HomePage.dart';
import 'package:yoga/pages/finish.dart';
import 'package:yoga/pages/rYoyReadyPage.dart';
import 'package:yoga/pages/startPage.dart';

void main() {
  runApp( MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: themeData.lightColorScheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: themeData.darkColorScheme,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:  const HomePage(),
    );
  }
}
