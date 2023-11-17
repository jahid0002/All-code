import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

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

class _HomeScrenState extends State<HomeScren>
    with SingleTickerProviderStateMixin {
  int rightDice = 1;
  int leftDice = 1;
  late AnimationController controlar;

  @override
  void initState() {
    super.initState();
    animate();
  }

  @override
   void dispose() {
    
    super.dispose();
    controlar.dispose();
   }


   dynamic animate(){controlar =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    
    controlar.addListener(() {
      setState(() {
        
      });
      print(controlar.value);
    });
    controlar.addStatusListener((status) {
      if(status == AnimationStatus.completed){
         

        print('completed');

        controlar.reverse();
      }
    });
    
    }

  void roll() {
    controlar.forward;
     setState(() {
      rightDice = Random().nextInt(6) + 1;
      leftDice = Random().nextInt(6) + 1;
    });
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 182, 212),
        title: const Text('Dicee'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(15),
                        child: GestureDetector(
                          onDoubleTap: roll,
                          child: Image(
                            height: 200 - (controlar.value) * 200 ,
                              image: AssetImage(
                                  'assets/images/dice-png-$rightDice.png')),
                        ))),
                Expanded(
                    child: Padding(
                  padding:  EdgeInsets.all(15),
                  child: GestureDetector(
                    onDoubleTap: roll,
                    child: Image(
                      height: 200 - (controlar.value) * 200,
                        image:
                            AssetImage('assets/images/dice-png-$leftDice.png')),
                  ),
                )),
              ],
            ),
            ElevatedButton(
              onPressed: roll,
              child: const Text(
                'ROLL',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
