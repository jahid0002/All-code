import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
  RangeValues values = RangeValues(0, 1);
  var hour = DateTime.now().hour;

  var quater;

  @override
  void initState() {
    super.initState();

    Timer(Duration(microseconds: 1), () {
      var hour = DateTime.now().hour;
      if (hour < 12) {
        quater = 'Morning';
        setState(() {});
      } else if (hour < 17) {
        quater = 'Afternoon';
        setState(() {});
      } else {
        quater = 'Evening';
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.home,
                size: 30,
                color: Colors.black,
              ),
            ),
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.shop,
                  size: 30,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.favorite_sharp,
                  size: 30,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.local_offer_sharp,
                  size: 30,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.more,
                  size: 30,
                  color: Colors.black,
                )),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: Colors.orange[50],
        child: Column(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 150,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 202, 9, 9),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        ' Good $quater',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 75.0),
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.notification_add,
                          size: 20,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 75.0),
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.man,
                          size: 20,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 75.0),
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.search,
                          size: 20,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 480,
              color: Colors.orange[50],
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child:  ConstrainedBox(
                          
                             constraints: BoxConstraints(
                              maxHeight: 50,
                              maxWidth: 100,
                              minHeight: 30,
                              minWidth: 80,
                              
                              
                              
                             ),
                          
                          child: RangeSlider(
                              labels: labels,
                              values: values,
                              
                              
                              activeColor: Colors.red[900],
                              inactiveColor: Colors.red.shade300,
                              divisions: 10,
                              onChanged: ((value) {
                                values = value;
                                setState(() {
                                  print('${values.start}, ${values.end}');
                                });
                              })),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
