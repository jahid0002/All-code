import 'package:flutter/material.dart';
import 'package:practice_api2/pages/homePage.dart';
import 'package:practice_api2/pages/postProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<PostProvider>(
    create: (context) => PostProvider(), child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
       // useMaterial3: true,
      ),
      home:  HomePage(),
    );
  }
}
