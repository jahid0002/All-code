import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScren(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScren extends StatefulWidget {
  const HomeScren({super.key});

  @override
  State<HomeScren> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          "cudurburdur App",
        )),


        body: Center(
          child: Column(
            children: <Widget>[
              //Image(image:),
               Text(
                'Apps',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
               Text("Flutter",style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,),
              ),
              Center(
                child: Container(
                    width: 300,
                    height: 150,
                    color: Colors.amber,
                    child:  Center(
                      child: Image(image: AssetImage('image/flutter.PNG'),)
                    )),
              ),

              const Text("nai",
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,),
              ),
              ElevatedButton(
                child: const Text("Preas",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
                onPressed: () {
                  MyApp();
                },
              ),
              
            ],
          ),
        ));
  }
}
