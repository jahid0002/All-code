import 'package:class18/page/navBer/navber.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( 
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white10),
        useMaterial3: true, 
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 22,  
            fontWeight: FontWeight.w800,  
            color: Colors.white,  
            
          ),  
          displayMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ), 
            displaySmall: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),    
        ), 
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green ,  
          toolbarHeight: 70,   
          centerTitle: true,
        ) ,  
      
      ),
      home: BottomNavber(), 
    );
  }
}
