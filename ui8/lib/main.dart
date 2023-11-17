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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: MediaQuery.sizeOf(context).height, width: MediaQuery.sizeOf(context).width,
      child: Stack(
        children: [
          
           Container(height: MediaQuery.sizeOf(context).height, width: MediaQuery.sizeOf(context).width, color: Colors.white60,),

           Image(image: AssetImage('assets/images/img.jpg'),  width: MediaQuery.sizeOf(context).width, 
            ),
           Positioned(
            left: 25,
            top: 300,
            child: ClipRRect(
            
              child: Container(width: 450, height: 250, decoration: BoxDecoration(
                          color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)), boxShadow: [
                  BoxShadow(blurRadius: 15,
                  spreadRadius: 1,
                  offset: Offset(60 ,60),
                  color: Colors.black),

                 
                ]
                
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hatha Yoga Class', style:  TextStyle(fontSize: 25, fontWeight: FontWeight.w900,color: Colors.black),),
                      Container(height: 5,),
                       Text(
                            'For Beginnerers',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.black54),
                          ),

                          Container(height: 25,),
                          Row(
                            children: [
                              Image(image: AssetImage('assets/images/yoga1.png'), height: 50, width: 50,color: Colors.green,),
                              Container(width: 8,),
                              Column(
                                children: [
                                   Text(
                                    'Hatha Yoga Class',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    'yin yoga function',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black),
                                  ), 
                                ],
                              ),
                            ],
                          ),
                          Container(height: 25,),

                           Text(
                            'akti manuser yoga ba amanssik sokti onek vabe akta manus k upokar kore thake tai proti manuser yoga kora dorkar na hole amra mansik vabe durbol hoye pori',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w900,
                                color: Colors.black),
                          ),
                           TextButton( onPressed: null, child:  Text('Readmore', style:  TextStyle(fontSize: 14, fontWeight: FontWeight.w900,color: Colors.black),),
                    
                           
                          ),
                    ],
                  ),
                ),
                ),
            
           )),

           Positioned(
            left: 25,
            top: 570,
             child: Column(
               children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     Text(
                        '24 leasons',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                     
                      Container(width: 150),
                      Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                          borderRadius: BorderRadius.circular(50),
                          
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Start', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),),
                              IconButton(onPressed: null, icon: Icon(Icons.start, size: 30, color: Colors.white,))
                            ],
                          ),
                      ),

                  ],
                 ),
                 Container(height: 15,),
                 Container(height:50 , width:380, decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
                
                 ]),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: null, icon: Icon(Icons.home, size: 25, color: Colors.black,)),
                    IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.download,
                              size: 25,
                              color: Colors.black,
                            )),
                            IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.email,
                              size: 25,
                              color: Colors.black,
                            )),
                  ],
                 ),
                 )
               ],
             ),
           ),

           
          

        ],
      ),
      ),
    );
  }
}