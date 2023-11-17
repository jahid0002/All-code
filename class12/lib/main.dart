import 'package:class12/const/getStorage/getStorage.dart';
import 'package:class12/pages/homePage.dart';
import 'package:class12/pages/signUpPage.dart';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 244, 240, 251)),
       // useMaterial3: true,
      ),
      home: StorageController.isFirstTimeLogin()? const SignUpPage() : const HomePage(),
    );
  }
}
