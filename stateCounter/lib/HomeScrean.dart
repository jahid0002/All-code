import 'dart:async';

import 'package:flutter/material.dart';

class HomeScrean extends StatefulWidget {
  const HomeScrean({super.key});

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  int count = 0;
  String AmPm = 'AM';
  // ignore: prefer_final_fields
  var _hour = DateTime.now().hour;
  var hour;

  void TimeUpdate() {
    if (_hour == 12) {
      hour = _hour;
    } else if (_hour > 12) {
      hour = _hour - 12;
    } else {
      hour = _hour;
    }

    if (_hour >= 12) {
      AmPm = 'Pm';
    } else if (_hour > 23) {
      AmPm = 'Am';
    } else {
      AmPm = 'Am';
    }

    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 1), (timer) {
      TimeUpdate();
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Home'),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${hour} : ${DateTime.now().minute} : ${DateTime.now().second}',
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '$AmPm',
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
