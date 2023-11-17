import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      body: SafeArea(
          child: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: Color.fromRGBO(24, 255, 255, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 80),
                  child: const Text(
                    'My Task',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 50, left: 40),
                    child: CircleAvatar(
                      maxRadius: 90,
                      backgroundImage: AssetImage('assets/images/images.jpeg'),
                    )),
              ],
            ),
            Container(
              width: 400,
              color: const Color.fromARGB(255, 21, 21, 19),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Text(
                'You have 3 task today',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              height: 50,
              //color: Colors.amber,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Stack(
                    
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                          height: 350,
                          width: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 20),
                                child: Text(
                                  'Walk',
                                  style: TextStyle(
                                      color: Color.fromRGBO(24, 255, 255, 1),
                                      fontSize: 25),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  'Walk for 30 minutes in a new rural area',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 20),
                                child: Text(
                                  'If you are walk is a rural areia then at first you have to go in a rural areia. then take a stopwatch and walk walk for 30 minutes. Remembar dont take way you are walking',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              ),
                              Container(
                                height: 40,
                                // color: Colors.amberAccent,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      '3 Comment',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromRGBO(24, 255, 255, 1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 110,
                                  ),
                                  Text(
                                    '-->',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(24, 255, 255, 1),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )),
                      Positioned(
                       // width: -5,
                        child: FloatingActionButton(
                          onPressed: null,
                          // backgroundColor: Colors.white,
                          child: Icon(Icons.add, color: Color.fromRGBO(24, 255, 255, 1),),
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  color: Colors.black26,
                ),
                Container(
                  height: 350,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
