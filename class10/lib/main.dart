import 'package:class10/controller/navBarNavigationController.dart';

import 'package:class10/pages/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_)=> NavController())
    ],

   child:  const MyApp()
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
      home: const BottomNav(),
    );
  }
}

