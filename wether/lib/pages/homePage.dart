

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wether/provider.dart/internetProvider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<InternetProvider>(builder: ((context, value, child) {
      return Scaffold(
    body: SnackBar(content: Text('${value.text}') ,),
    );
    }));
  }
}