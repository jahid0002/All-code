import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'musicList.dart';
import 'text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xFFDFE9FD)),
      title: 'App',
      home: Home(),
    );
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
        body: Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      color: Color(0xFFDFE9FD),
      child: Center(
        child: Column(
          children: [
            Container(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFFDFE9FD),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 15,
                              color: Colors.black,
                              offset: Offset(4, 4),
                              spreadRadius: 1),
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 1,
                            offset: Offset(-4, -4),
                            blurRadius: 8,
                          )
                        ],
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Text(
                  'Playing Now',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Test()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFDFE9FD),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(4, 4),
                              color: Colors.black,
                              blurRadius: 15,
                              spreadRadius: 1,
                            ),
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 8,
                                spreadRadius: 1,
                                offset: Offset(-4, -4))
                          ]),
                      child: Icon(
                        Icons.add,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 60,
            ),
            Container(
              alignment: Alignment.center,
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Color(0xFFDFE9FD),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(4, 4),
                    spreadRadius: 1,
                    blurRadius: 15,
                    color: Colors.black,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 15,
                    offset: Offset(4, 4),
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Image(image: AssetImage('assets/images/download1.png')),
            ),
            Container(
              height: 15,
            ),
            Text(
              'Lose it',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w700,
                  fontSize: 22),
            ),
            Text(
              'Fluma ft. Vlc Mensa',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w100,
                  fontSize: 12),
            ),
            Container(
              height: 120,
            ),

            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Test()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFDFE9FD),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(4, 4),
                              color: Colors.black,
                              blurRadius: 15,
                              spreadRadius: 1,
                            ),
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 8,
                                spreadRadius: 1,
                                offset: Offset(-4, -4))
                          ]),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                  InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Test()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFDFE9FD),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(4, 4),
                              color: Colors.black,
                              blurRadius: 15,
                              spreadRadius: 1,
                            ),
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 8,
                                spreadRadius: 1,
                                offset: Offset(-4, -4))
                          ]),
                      child: Icon(
                        Icons.favorite,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                  InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Test()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFDFE9FD),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(4, 4),
                              color: Colors.black,
                              blurRadius: 15,
                              spreadRadius: 1,
                            ),
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 8,
                                spreadRadius: 1,
                                offset: Offset(-4, -4))
                          ]),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
            
           
          ],
        ),
      ),
    ));
  }
}
