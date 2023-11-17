import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kubit/Home_page.dart';
import 'package:kubit/Internet_kubit/Internet_kubit.dart';
import 'package:kubit/spalassSCreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData(brightness: Brightness.dark),
        themeMode: ThemeMode.light,
        theme: ThemeData(
            primarySwatch: Colors.deepOrange, brightness: Brightness.light),
        highContrastDarkTheme: ThemeData(canvasColor: Colors.cyanAccent),
        home:  Splass(),
      ),
    );
  }
}
