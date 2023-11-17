import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: TextTheme(
          headlineLarge:TextStyle(fontSize: 17,
          fontWeight: FontWeight.bold,
          color: Colors.purple,) 
        ),
      ),
      home: Home(),
      title: 'App',
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var arrlist = [
    'Jahid',
    'Saifuzzaman',
    'Nahid',
    'karim',
    'rahim',
    'belal',
    'rubel',
    'rana',
    'pasha',
    'abu hanif',
    'hasem',
    'kasem',
    'lota apu',
    'mahfuz'
  ];

  var numberList = [
    'Id 123',
    'Id 123',
    'Id 123',
    'Id 123',
    'Id 123',
    'Id 123',
    'Id 123',
    'Id 123',
    'Id 123',
    'Id 123',
    'Id 123',
    'Id 123',
    'Id 123',
    'Id 123',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'List',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w500,
              color: const Color.fromARGB(255, 248, 246, 248),
              //backgroundColor: Colors.purple,
            ),
          ),
          //backgroundColor: Colors.purple,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return (ListTile(
               trailing:Icon(Icons.add),
             

              title: Text(arrlist[index]),
              subtitle: Text(numberList[index], style: TextStyle(fontSize: 17,
              color: Colors.white)),
              hoverColor: Colors.black,
              horizontalTitleGap: Checkbox.width,
            ));
          },
          itemCount: arrlist.length,
          separatorBuilder: (context, index) {
            return Divider(
              height: 20,
              thickness: 1,
              indent: double.minPositive,
            );
          },
        ));
  }
}
