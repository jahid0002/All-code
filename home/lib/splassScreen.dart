import 'dart:async';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';
import 'package:home/main.dart';

class SplassScreen extends StatefulWidget {
  const SplassScreen({super.key});

  @override
  State<StatefulWidget> createState() => SplassState();
}

class SplassState extends State<SplassScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: Colors.cyanAccent,
        child: Container(
          child: Center(
       
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Animals',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          )),
                      Icon(Icons.favorite_border),

                     
                    ],
                  ),
                   FaIcon(FontAwesomeIcons.kiwiBird)
                ],
              ),
            
            
          ),
        ),
      ),
    );
  }
}
