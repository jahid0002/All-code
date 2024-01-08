import 'dart:async';


import 'package:chatapps/const/new_chat/notification_controller.dart';
import 'package:chatapps/page/spalash_page/spalash_service.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final service = SpalashService();
  final NotificationController notification = NotificationController();
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      service.getScrean();
    });
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.message, size: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CHAT',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'APPS',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
