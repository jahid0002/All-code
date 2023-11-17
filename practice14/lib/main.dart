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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: Color.fromARGB(255, 1, 45, 29),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
            ),
            Card(
              
              color: Color.fromARGB(255, 1, 45, 29),
              child: CircleAvatar(
                   maxRadius: 100,
                 backgroundImage: AssetImage('assets/images/images2.png'),
                 backgroundColor: Color.fromARGB(255, 1, 45, 29),
                 
              ),
            ),

            Container(
              height: 40,
            ),

            Padding(
              padding: const EdgeInsets.only(right:45.0),
              child: Text('Provide You ', style: TextStyle(
                fontSize: 30,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w900,
                color: Colors.white,
                
              ),),
            ),
             Padding(
               padding: const EdgeInsets.only(right:45.0),
               child: Text(
                ' Best Cleaning',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
                         ),
             ),
             Padding(
               padding: const EdgeInsets.only(right:45.0),
               child: Card(
                elevation: 15,
                color: Color.fromARGB(255, 1, 45, 29),
                 child: Text(
                  'Service',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontFamily:  'Roboto',
                  ),
                           ),
               ),
             ),
              
              
              Container(
                height: 80,
              ),
             Card(
              elevation: 40,
              shadowColor: Colors.orange,
               child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 300,
               decoration: BoxDecoration(
                 color: Colors.orange,
                borderRadius: BorderRadius.all(Radius.circular(8))),
             
                child: Card(
                  color: Colors.orange ,
                  elevation: 1,
                  shadowColor:Color.fromARGB(255, 3, 83, 59),
                  child: Text('GO AHED',style:TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    fontFamily: 'Roboto',
                    color: Colors.white,
                  ) ,),
                ),
             
               ),
             ),
            
              
              
            
          ],
        ),
      ),
    );
  }
}