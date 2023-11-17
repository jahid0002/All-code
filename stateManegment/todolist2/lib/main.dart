import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist2/page/homePage.dart';
import 'package:todolist2/provider/todoProvider.dart';

void main() {
  runApp(MultiProvider(providers: [
   ChangeNotifierProvider(create: (_)=> TODOListProvider()),
  ], 
  child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const HomePage(),
    );
  }
}
