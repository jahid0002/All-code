import 'dart:async';

import 'package:flutter/material.dart';
import 'package:keeps/const/app_const_page.dart';
import 'package:keeps/page/spalash_view/spalash_controller.dart';

class SpalashPage extends StatefulWidget {
  const SpalashPage({super.key});

  @override
  State<SpalashPage> createState() => _SpalashPageState();
}

class _SpalashPageState extends State<SpalashPage> {
  final controller = SpalashController();
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      controller.nextPage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/keeps.png',
              width: 150,
            ),
            Text(AppConst.appName,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(color: AppConst.whiteColor)),
          ],
        ),
      ),
    );
  }
}
