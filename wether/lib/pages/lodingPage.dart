import 'package:flutter/material.dart';
import 'package:wether/pages/homePage.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LodinfPageState();
}

class _LodinfPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: InkWell(
        onDoubleTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) =>  HomePage()));
        },
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(color: Colors.blue.shade200),
          child:  Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Icon(
              Icons.home,
              size: 25,
              color: Colors.black38,
            ), 
            SizedBox(width: 8,),
            Text(
              'Double tap to home',
              style: TextStyle(fontSize: 22, color: Colors.black38),
            )
          ]),
        ),
      )),
    );
  }
}
