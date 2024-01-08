import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keeps/const/app_const_page.dart';
import 'package:keeps/firebase_options.dart';
import 'package:keeps/page/spalash_view/spalash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( 
      debugShowCheckedModeBanner: false,
      title: AppConst.appName,
      theme: ThemeData( 
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, 
        textTheme: const TextTheme( 
          displayLarge: TextStyle(fontSize: 28, color: AppConst.whiteColor, fontWeight: FontWeight.w900), 
          titleLarge: TextStyle(fontSize: 22, color: AppConst.whiteColor, fontWeight: FontWeight.w900),  
          titleMedium:  TextStyle(
                fontSize: 20, color: AppConst.whiteColor, fontWeight: FontWeight.w700), 
                titleSmall:  TextStyle(
                fontSize: 18, color: AppConst.whiteColor, fontWeight: FontWeight.w500),
        ), 
    
          

        
      ),
      home: const SpalashPage(),
    );
  }
}
