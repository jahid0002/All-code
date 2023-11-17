// ignore: file_names
import 'package:flutter/material.dart';
import 'package:practice_hive3/hive_controller/widgedt.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: text('Home', 26, FontWeight.w800, Colors.white),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          addNoteDialog(context);
        },
        child: icon(Icons.add, 35, Colors.white),
      ), 
      body: Body(),
    );
  }
}
