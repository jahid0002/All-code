import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: unused_element
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text(
            'Home',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 200,
              // color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 100,
                    // color: Colors.orange,
                    child: Center(
                        child: Column(
                      children: [
                        FloatingActionButton(
                          elevation: 20,
                          backgroundColor: Colors.blue,
                          focusColor: Colors.blueAccent,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => page1()));
                          },
                          child: Icon(
                            Icons.add,
                            size: 25,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'page1',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => name()));
                },
                child: Icon(Icons.dangerous))
          ],
        ),
      ),
    );
  }
}

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Page2',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            color: Colors.white60,
            border:
                Border(bottom: BorderSide(width: 2, color: Colors.black54))),
      ),
    );
  }
}
