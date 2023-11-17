

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
      title: 'App',
     // color: Colors.cyan,
      home: Hmoe(),
    );
  }
}

class Hmoe extends StatefulWidget {
  const Hmoe({super.key});

  @override
  State<Hmoe> createState() => _HmoeState();
}

class _HmoeState extends State<Hmoe> {
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          
          image: AssetImage('assets/images/images.JPG')),
        Container(
          alignment: Alignment.topRight,
          height: 200,
          width: 300,
         decoration: BoxDecoration(
          
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          border:  Border.all(
          width: 2,
          color: const Color.fromARGB(153, 54, 52, 52)
         ),
          color: Colors.white, 
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 243, 233, 233),
              spreadRadius: 3
            )
          ],
         ),
         child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 25,
            ),
           Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('CARTIER', style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
            ),
           Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Text('A21456', style: TextStyle(
                fontSize: 11,
                color: Colors.black
                
              ),),
            ),
            Container(
              height: 20,
            ),
         Padding(
              padding:  EdgeInsets.only(left:20.0),
              child:  Text('This a new clock. Fully metal construction.', style: TextStyle(
                fontSize: 11,
                color: Colors.black
              ),),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'This a new clock. Fully metal construction.',
                  style: TextStyle(fontSize: 11, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'This a new clock. Fully metal construction.',
                  style: TextStyle(fontSize: 11, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'This a new clock. Fully metal construction.',
                  style: TextStyle(fontSize: 11, color: Colors.black),
                ),
              ),
              Container(
                height: 12,
              ),
               Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'TK 4565',
                  style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 200, 50, 50)),
                ),
              ),
             
          ],
         ), 
                   
        ),
       const  Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 10),
          child: Positioned(
            child: FloatingActionButton(
              onPressed: null,
              // materialTapTargetSize:,
              // shape: Border.all(width: 1, color: Colors.amber),
              child: Icon(Icons.camera),
            ),
          ),
        )
        
      ],
    );
  }
}
