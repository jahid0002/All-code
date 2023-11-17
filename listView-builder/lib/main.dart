import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'banglaApp',
      home: Homescren(),
    );
  }
}

class Homescren extends StatefulWidget {
  const Homescren({super.key});

  @override
  State<Homescren> createState() => _HomescrenState();
}

class _HomescrenState extends State<Homescren> {
  var arrList = [
    'jahid',
    'nahid',
    'mostakul',
    'rabbi',
    'jahid',
    'nahid',
    'mostakul',
    'rabbi'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
            style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w500,
                backgroundColor: Colors.blue),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(padding: EdgeInsets.all(4),
              child: (Text(
                arrList[index],
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                ),
              )),
            );
          } ,
          itemCount: arrList.length,
        ));
  }
}
