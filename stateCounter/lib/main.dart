import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateCounter/HomeScrean.dart';
import 'package:stateCounter/ProviderHome.dart';
import 'package:stateCounter/count_provider.dart';
import 'package:stateCounter/provider/Container_Provider.dart';
import 'package:stateCounter/provider/opacity_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
       ChangeNotifierProvider(
      create: (_) => CountProvider()),
      ChangeNotifierProvider(
        create: (_) => Oprovider()),
        ChangeNotifierProvider(
          create: (_)=> ContainerProvider())
    ],
      child:  const MaterialApp(
        debugShowCheckedModeBanner: false,
      home: ProviderHome(),
        
    )
   
      
    );
  }
}
