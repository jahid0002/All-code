import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            pinned: true,
            backgroundColor: Colors.blue,
           expandedHeight: 300, 
           flexibleSpace: FlexibleSpaceBar( 
            centerTitle: true,
            title:const Text('Yoga For Beginers', style: TextStyle(
            fontSize: 22, 
            fontWeight: FontWeight.bold, 
            color: Colors.white,  
                     ),), 
            background: Image.network('https://images.unsplash.com/photo-1545205597-3d9d02c29597?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHlvZ2F8ZW58MHx8MHx8fDA%3D', fit: BoxFit.cover,),
           ),
           
          ), 
          SliverToBoxAdapter(
            child: Column(
            children: [
              Container(height: 500,color: Colors.purple,),
              Container(height: 500,color: const Color.fromARGB(255, 12, 12, 12),),
              Container(height: 500,color: Color.fromARGB(255, 20, 14, 195),),
              Container(
                height: 500,
                color: Colors.purple,
              ),
              Container(
                height: 500,
                color: Color.fromARGB(255, 6, 201, 55),
              ),
            ],
          ) ,
          ),
         
        ],
      ),
    );
  }
}
