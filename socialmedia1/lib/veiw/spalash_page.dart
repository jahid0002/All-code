import 'dart:async';

import 'package:flutter/material.dart';
import 'package:socialmedia1/service/spalash_service.dart';

class SpalashPage extends StatefulWidget {
  const SpalashPage({super.key});

  @override
  State<SpalashPage> createState() => _SpalashPageState();
}

class _SpalashPageState extends State<SpalashPage> {
  SpalashService service = SpalashService();

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      service.getScrean();
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        body: SizedBox(
      height: height,
      width: width,
      child: Image.asset('assets/images/app_logo.jpg', fit: BoxFit.cover),
    ));
  }
}
