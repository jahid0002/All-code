import 'package:flutter/material.dart';
import 'package:profile/page/homePage.dart';
import 'package:profile/provider/profileProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
ChangeNotifierProvider(create: (_)=> ProfileProvider())
  ], 
  child:  const MyApp(),
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
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade400),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
