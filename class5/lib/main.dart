import 'package:class5/controller/noteProvider.dart';
import 'package:class5/pages/homePage.dart';
import 'package:flutter/material.dart'; 
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context)=> NoteProvider(), child: const MyApp(),));
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
      home:  HomePage(),
    );
  }
}
