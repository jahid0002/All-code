import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScren extends StatefulWidget {
  const HomeScren({super.key});

  @override
  State<HomeScren> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  var arrlist1 = [
    'Jahid',
    'Nahid',
    'bappi',
    'sohag',
    'hanif',
    'alli',
    'pappu'
  ];
  var arrlist2 = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13'];

  var arrlist3 = [
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine',
    'ten',
    'eleven',
    'tuelv'
  ];

  var arrlist4 = [
    'ak',
    'dui',
    'tin',
    'char',
    'pac',
    'coy',
    'sat',
    'at',
    'noy',
    'dos',
    'agaro',
    'baro',
    'tero'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'HOME',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:  Container(
        color: Colors.blue,
         height: MediaQuery.of(context).size.height ,
         width: MediaQuery.of(context).size.width,

        child: ListView(
          children:[ Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                   // crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 100,
                            color: Color.fromARGB(255, 12, 12, 12),
                            child: const Text(
                              'List->1',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                           Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                           Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                           Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                           Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                           
                       
                            
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 100,
                            color: const Color.fromARGB(255, 10, 11, 11),
                            child: const Text(
                              'List->2',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                           Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                           Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                           Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                           Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                           Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                           
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 100,
                            color: const Color.fromARGB(255, 5, 6, 6),
                            child: const Text(
                              'List->3',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                           Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                           Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                           Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                           Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                           Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                           
                        ],
                      ),
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 100,
                              color: Colors.black,
                              child: const Text(
                                'List->4',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                           
                             Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                      Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                          Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                         Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                           Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        'List->4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                                   
                           
                          ],
                        ),
                      
                    ],
                  
                ),
          ),
          ]
        ),
      ),
        
      
    );
  }
}
