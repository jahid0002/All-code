import 'package:flutter/material.dart';
import 'package:home/Folower.dart';
import 'package:home/splassScreen.dart';

import 'Animal.dart';
import 'Bird.dart';
import 'Fruit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SplassScreen());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(221, 248, 8, 8),
        ),
        body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          color: Colors.white60,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Flower(),
                            ));
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: 150,
                            decoration: const BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(4, 4),
                                  blurRadius: 15,
                                  spreadRadius: 1,
                                  color: Colors.black38,
                                ),
                                BoxShadow(
                                    offset: Offset(-4, -4),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                    color: Colors.white30),
                              ],
                            ),
                            child: Image.asset('images/download1.png'),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Flowers',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Animal()));
                          },
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(31, 0, 0, 0),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(4, 4),
                                  blurRadius: 15,
                                  spreadRadius: 1,
                                  color: Colors.black38,
                                ),
                                BoxShadow(
                                    offset: Offset(-4, -4),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                    color: Colors.white30),
                              ],
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 25.0, left: 5),
                              child: Image.asset(
                                'images/download2.png',
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Animals',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Fruit()));
                          },
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: const BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(4, 4),
                                  blurRadius: 15,
                                  spreadRadius: 1,
                                  color: Colors.black38,
                                ),
                                BoxShadow(
                                    offset: Offset(-4, -4),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                    color: Colors.white30),
                              ],
                            ),
                            child: Image.asset(
                              'images/download3.png',
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Fruits',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Bird()));
                          },
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: const BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(4, 4),
                                  blurRadius: 15,
                                  spreadRadius: 1,
                                  color: Colors.black38,
                                ),
                                BoxShadow(
                                    offset: Offset(-4, -4),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                    color: Colors.white30),
                              ],
                            ),
                            child: Image.asset('images/download4.png'),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Birds',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
