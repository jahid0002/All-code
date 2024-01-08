import 'package:firebase123/pages/notification_controller2.dart';
import 'package:firebase123/pages/view/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NotificationServices notificationServices = NotificationServices();

  @override
  void initState() {
    super.initState();
    notificationServices.notificationRequest();
    notificationServices.getDisplayToken().then((value) {
      print(value);
    });
    notificationServices.initFirebase(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        title: const Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const SecondPage()));
        },
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.white,
    );
  }
}
