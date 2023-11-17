import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var flag = true;
  var Cheight = 100.0;
  var Cwidth = 200.0;
  var Ccolor = Colors.amber;
  var text = 'Jahid';
  var ccolor = Colors.green;
  void Animation() {
    if (flag) {
      setState(() {
        Cheight = 200.0;
        Cwidth = 100.0;
        Ccolor = Colors.green;
        ccolor = Colors.amber;
        text = 'Jannat';
        flag = false;
      });
    } else {
      setState(() {
        flag = true;
        Cheight = 100.0;
        Cwidth = 200.0;
        ccolor = Colors.green;
        text = 'Jahid';
        Ccolor = Colors.amber;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Animation',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.cyanAccent.shade700,
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: const Color.fromARGB(255, 182, 192, 192),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                alignment: Alignment.center,
                duration: Duration(seconds: 3),
                height: Cheight,
                width: Cwidth,
                color: Ccolor,
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold, color: ccolor),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
           
                 FloatingActionButton(
                      onPressed: () {
                        Animation();
                      },
                      child: Icon(Icons.favorite, size: 30,)
                      )
            ],
          ),
        ),
      ),
    );
  }
}
