import 'package:flutter/material.dart';
import 'package:wether/pages/homePage.dart';
import 'package:wether/pages/lodingPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/" : (context) => const LoadingPage(), 
      "/home" : (context)=> const HomePage(),
  },));
}
