import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScren(),
    );
  }
}


class HomeScren extends StatefulWidget {
  const HomeScren({super.key});

  @override
  State<HomeScren> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {

   void func(){
    print('Valobashi');
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(fontWeight: FontWeight.w500),),
        backgroundColor:Colors.red ,
      ),
      body: Center(
        child: InkWell(
          onTap: func ,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blueAccent,
            
          ),
        ),
      ),
    );
  } 
}