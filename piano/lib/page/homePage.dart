

import 'package:flutter/material.dart';
import 'package:piano/page/widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(child: Stack(fit: StackFit.passthrough,
      children: [
        Image.asset('images/solid.jpg', fit: BoxFit.cover,), 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            LineDevider(), 
             LineDevider(), 
              LineDevider(), 
             
          ],
        ),

      ],
    ))
    );
  }
}