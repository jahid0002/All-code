import 'package:flutter/material.dart';

class HomeScrean extends StatefulWidget {
  const HomeScrean({super.key});

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ToDo',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 21,
          ),
        ),
      ),
      body: Text('app'),
    );
  }
}
