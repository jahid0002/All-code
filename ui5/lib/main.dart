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
      theme: ThemeData(
        colorSchemeSeed: Colors.white,
      ),
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
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            color: Color.fromARGB(255, 231, 226, 226),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: IconButton(onPressed: null, icon: Icon(Icons.menu_open,
                              color: Colors.blue,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: IconButton(
                          highlightColor: Colors.white,
                          onPressed: null, icon: Icon(Icons.child_friendly_outlined,color: Colors.black,  )),
                      ),
            
                    ],
            
            
                  ),
            
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 30),
                    child: Text('Top Item', style: TextStyle(
                      fontFamily: 'roboto',
                      fontWeight: FontWeight.w900,
                      fontSize: 25
                    ),),
                  ),
            
                  Container(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(focusNode: FocusNode(canRequestFocus: true),
                        onPressed: null, child: Text('top', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),)),
            
                          TextButton(
                          onPressed: null,
                          child: Text(
                            'Fruity',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          )),
                              TextButton(
                          onPressed: null,
                          child: Text(
                            'Vagetable',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          )),
                              TextButton(
                                focusNode: FocusNode(canRequestFocus: true,),
                          onPressed: null,
                          child: Text(
                            'Flowers',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              
                            ),
                          )),
                        
                           
                    ],
                  ),
                  Container(height: 60,),
            
                  SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                  
                        Container(width: 90,),
                      
                                 Card(
                                  elevation: 100,
                                   child: Container( height: 350,
                                          width: 250,
                                          decoration: BoxDecoration(color: Color.fromARGB(255, 3, 126, 60), borderRadius: BorderRadius.circular(20)),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                                         
                                              Container(height: 10,),
                                                         
                                              Text('fruity', style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),),
                                              Container(
                                        height: 10,
                                      ),
                                      Text(
                                        'Tk 100',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                      ),
                                        Container(
                                        height: 10,
                                      ),
                                    
                                      Image(
                                        height: 200,
                                        width: 200,
                                        image: AssetImage('assets/images/mango1.png', )),
                                                         
                                            Container(
                                        height: 10,
                                      ),
                                      Text(
                                        'Mango',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                      ),
                                                         
                                            ],
                                          ),
                                                           ),
                                 ),

                         
                               
                             
                        
                        Container(width: 50,),              
                        Container(
                          height: 350,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 3, 126, 60),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
           Positioned(
              bottom: 80,
              right: 250,
              child: ClipRRect(
                  child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.child_friendly_outlined,
                            color: Colors.black,
                          )))))
        ],
      ),
    );
  }
}