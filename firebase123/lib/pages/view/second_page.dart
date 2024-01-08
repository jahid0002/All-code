

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('SecondPage', style: TextStyle(
          fontSize: 22, 
          fontWeight: FontWeight.w600, 
          color: Colors.blue
        ),),
      ),
    );
  }
}