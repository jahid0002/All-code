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
  var arr = ['Jahid', 'Nahid', 'Jamal', 'Kamal', 'Nasir', 'Shakib', 'Messi', 'diala', 'Lavlu', 'siblu', 'sohid'];
  var list = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10' '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Practice Match',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w300,
            color: Colors.white70,
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 100,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/images1.png'),
                    child: Text(list[index]),
                  ),
                );
              },
              itemCount: list.length,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 400,
            child: ListView.builder(itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: ListTile(
                  title: Text(arr[index]),
                  subtitle: Text(list[index]),
                  trailing: Icon(Icons.add),
                ),
              );
            }, 
            itemCount: arr.length,),
          ),
        ],
      ),
    );
  }
}
