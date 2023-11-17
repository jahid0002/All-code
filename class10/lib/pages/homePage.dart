


import 'package:class10/const/color.dart';
import 'package:class10/const/text.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColor.bgColor,
      appBar: AppBar(
        backgroundColor: AllColor.bgColor,
        title: AllText.text(
            'Home', 22, FontWeight.w700, AllColor.textTitleColor),
        centerTitle: true,
        toolbarHeight: 90,
      ),
    );
    
  }
}