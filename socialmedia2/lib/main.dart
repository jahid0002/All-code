import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:socialmedia1/const/app_color.dart';
import 'package:socialmedia1/firebase_options.dart';
import 'package:socialmedia1/veiw/spalash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Media',
      theme: ThemeData( 
        useMaterial3: true,
        colorScheme:
            ColorScheme.fromSeed(seedColor: AppColors.primaryMaterialColor),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: AppColors.whiteColor,
          titleTextStyle: TextStyle(
            fontSize: 22,
            color: AppColors.primaryTextTextColor,
          ),
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 40,
              color: AppColors.primaryTextTextColor,
              fontWeight: FontWeight.w800),
          headline2: TextStyle(
              fontSize: 32,
              color: AppColors.primaryTextTextColor,
              fontWeight: FontWeight.w800),
          headline3: TextStyle(
              fontSize: 28,
              color: AppColors.primaryTextTextColor,
              fontWeight: FontWeight.w800),
          headline4: TextStyle(
              fontSize: 24,
              color: AppColors.primaryTextTextColor,
              fontWeight: FontWeight.w800),
          headline5: TextStyle(
              fontSize: 28,
              color: AppColors.primaryTextTextColor,
              fontWeight: FontWeight.w800),
          headline6: TextStyle(
              fontSize: 17,
              color: AppColors.primaryTextTextColor,
              fontWeight: FontWeight.w800),
          bodyText1: TextStyle(
              fontSize: 17,
              color: AppColors.secondaryTextColor,
              fontWeight: FontWeight.w600),
          bodyText2: TextStyle(
              fontSize: 14,
              color: AppColors.primaryTextTextColor,
              fontWeight: FontWeight.w600),
          caption: TextStyle(
              fontSize: 12,
              color: AppColors.primaryTextTextColor,
              fontWeight: FontWeight.w600),
        ),
      ),
      home: const SpalashPage(),
    );
  }
}
