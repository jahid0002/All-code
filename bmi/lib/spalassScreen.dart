import 'dart:async';

import 'package:bmi/main.dart';
import 'package:flutter/material.dart';

class Spalass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Spalass();
  }
}

class _Spalass extends State<Spalass> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (contex) => const MyHomePage(
              title: 'BMI',
            ),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                  children: [
            Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              color: Colors.white24,
              child: Image.asset('images/images1.png', color: Colors.purple.shade200,),
            ),
                  ],
                ),
          )),
    );
  }
}
