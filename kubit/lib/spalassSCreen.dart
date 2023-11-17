// ignore: file_names
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kubit/Home_page.dart';
import 'package:kubit/Internet_kubit/Internet_kubit.dart';
import 'package:kubit/Internet_kubit/Internet_state.dart';

class Splass extends StatefulWidget {
  const Splass({super.key});

  @override
  State<Splass> createState() => _SplassState();
}

class _SplassState extends State<Splass> {
  @override
   void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const InternetLost()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: Colors.deepOrangeAccent,
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'My Robi',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InternetLost extends StatefulWidget {
  const InternetLost({super.key});

  @override
  State<StatefulWidget> createState() => InternetLostState();
}

class InternetLostState extends State<InternetLost> {
  

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InternetCubit, InternetState>(
      builder: (context, state) {
        if (state is InternetComeState) {
          return Scaffold(
            body: InkWell(
              onTap: (){
                 
                  
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Home()));
                 
                
              },
              child: Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                color: Colors.red[800],
                child: const Center(child: Text('Loding...')),
              ),
            ),
          );
        } else {
          return Scaffold(
            body: Stack(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.red[800],
                ),
                Positioned(
                  bottom: -1,
                  child: Container(
                    height: 350,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
