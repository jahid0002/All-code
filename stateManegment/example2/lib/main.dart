import 'package:example2/Provider/list_Provider.dart';
import 'package:example2/Provider/themeProvider.dart';
import 'package:example2/Screan/HomeScrean.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    print(build);
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ListProvider(),
          ),
          ChangeNotifierProvider(create: (_) => ThemeProvider())
        ],
        child: Consumer<ThemeProvider>(
          builder: (context, value, child) {
            return MaterialApp(
              themeMode: value.themeMode,
             
              debugShowCheckedModeBanner: false,
              home: const HomePage(),
            );
          },
        ));
  }
}
