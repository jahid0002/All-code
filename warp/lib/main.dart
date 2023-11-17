import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
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
      appBar: AppBar(elevation: 20, titleSpacing: 5, title: Text('HOME', style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        
      ),),
      backgroundColor: Colors.blue,
      shape: Border.all(width: 1, color: Colors.deepOrange),
      shadowColor: Colors.black,
      
      ),

      body: const Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.deepOrange,
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.deepOrange,
                                   ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.deepOrange,
                                   ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.deepOrange,
                                   ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.deepOrange,
                                   ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.deepOrange,
                                   ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.deepOrange,
                                   ),
                   ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.deepOrange,
                                    ),
                    ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.deepOrange,
                                   ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.deepOrange,
                                   ),
                   ),
                   Padding(
                     padding:  EdgeInsets.all(8.0),
                     child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.deepOrange,
                                   ),
                   ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            
              child:
                  Wrap(
                    children: [
                       Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.deepOrange,
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.deepOrange,
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.deepOrange,
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.deepOrange,
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.deepOrange,
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.deepOrange,
                        ),
                          
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.deepOrange,
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.deepOrange,
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.deepOrange,
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.deepOrange,
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.deepOrange,
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.deepOrange,
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.deepOrange,
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.deepOrange,
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.deepOrange,
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.deepOrange,
                        ),
                      ),
                    ],
                  ),
                
              
      
          ),
        ],
      ),
    );
  }
}