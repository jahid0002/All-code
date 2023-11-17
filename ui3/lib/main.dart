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
        color: const Color.fromARGB(77, 170, 160, 160),
        child: Column(
          children: [
            Container(height: 50,
            //color: Colors.amber,
            child:
            Row(
              
               children: [
                Container(width: 7,),
                IconButton(onPressed: null, icon: Icon(Icons.arrow_back, color: Colors.black,)),

                Container(width: 400,),

               IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.add_alert,
                        color: Colors.black,
                      )), 
               ],
            ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 5, color: Colors.white)),
              child: CircleAvatar(
                
                radius: 100,
                backgroundImage: AssetImage('asstes/images/afran.JPG'),
              ),
            ),
            Container(height: 10 ,),
            Text('Afran Nisho', style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),),
            Text('@afran', style: TextStyle(fontSize: 12,color: Colors.black),),

            Container(
              height: 50,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 135,
                 // color: Colors.white,
                  child: Text('Bedroom', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),)                  

                ),
                Container(
                  width: 100,
                ),

                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 135,
                //  color: const Color.fromARGB(255, 18, 18, 18),
                   child: Text(
                      'Bathroom',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )   
                ),
              ],
            ),
            
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 5,
                  child: Container(
                    height: 30,
                    width: 120,
                     decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(26)),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 7,
                            ),
                            Text(
                          '-',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        Container(width: 18,),
                            Text('1', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.red),),
                            Container(
                          width: 15,
                        ),
                        Text(
                          '+',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                            
                          ],
                        ),
                  ),
                ),
                Container(
                  width: 100,
                ),
                Card(
                  elevation: 5,
                  
                  child: Container(
                    height: 30,
                    width: 120,
                    
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(26)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 7,
                            ),
                            Text(
                          '-',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        Container(width: 18,),
                            Text('3', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.red),),
                            Container(
                          width: 15,
                        ),
                        Text(
                          '+',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                            
                          ],
                        ),
                             
                  ),
                ),
              ],
            ),
            Container(height: 37,),
          Container(
            height: 200,
            width: double.infinity,
           decoration: BoxDecoration(
                  color: Color.fromARGB(255, 14, 51, 23),
            borderRadius: BorderRadius.only(topLeft:Radius.circular(70), topRight: Radius.circular(70) ),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Padding(
                padding: const EdgeInsets.only(top:15.0, left: 48),
                child: Text('Day', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 25),),
              ),
              Row(
                children: [
                 
                  Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 60),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Text('2'),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 48),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.amberAccent,
                            child: Text('3'),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 48),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Text('4'),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 48),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Text('5'),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 48),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Text('6'),
                          ),
                        ),
                ],
              ),
              Container(height: 20,),

              Container(height: 85,
              width: double.infinity,
              
              decoration: BoxDecoration(
                
                    color: Colors.orange,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 10),
                    child: Text(
                      'Time', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(left:35.0, top: 10),
                      child: Container(height: 30,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Text('10.00', style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),
                      ),
                    ),
                      
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 35.0, top: 10),
                                  child: Container(
                                    height: 30,
                                    width: 70,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.white),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Text(
                                      '12.00',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),

                  

                  
                  ],)
                ]),
              ),
            ]),
          )  
          
          ],
        ),
      ),
    );
  }
}