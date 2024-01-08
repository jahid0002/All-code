import 'package:flutter/material.dart';
import 'package:practice_firebase/services/notificationPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NotificatioSetup notificatioSetup = NotificatioSetup();

  @override
  void initState() {
    super.initState();

    notificatioSetup.notificationRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
