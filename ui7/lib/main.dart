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
colorSchemeSeed: Colors.white38
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:15.0),
                child: Text('For You', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: Colors.black),),
              ),

              InkWell(
                onTap: null,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        boxShadow: [BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 1,
                                
                          color: Colors.white10,
                        )],
                      ),
                      child: Icon(Icons.home, size: 25, color: Colors.black,),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(height: 20,),
          Stack(
            children: [
              Container(
                width: 450,
                height: 400,
               // color: Colors.amber,
                
                  child: Column(
                    children: [
                      ClipRRect(borderRadius:BorderRadius.circular(50),
                      child:
                          Image(image: AssetImage('assets/images/images1.jpeg'), width: 450,),
                      ),
                      Container(height: 90,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            elevation: 30,
                            shadowColor: Colors.black,
                            child: Text('Styles', style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),),
                          ),
                          Text(
                          'Classes',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          'Techers',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                        ],
                      ),
                    ],
                  ),
              
              ),
              
              
              
                   Positioned(
                      top: 210,
                      left: 30,
                    child: ClipRRect(
                      child: Card(
                        elevation: 100,
                        shadowColor: Colors.black12,
                        child: Container(
                          height: 90,
                          width: 390,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('FEATURED', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black54),),
                                 Text(
                              'Hatha Yoga: Begienner',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black54),
                            ),
                             Text(
                              'A well-suited class for yours goals',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                
              
            ],
          ),

          Container(width: 450, height: 80, 
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                color: Colors.black12,
                blurRadius: 15,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(borderRadius: BorderRadius.circular(15),
                  
                  child: Image(image: AssetImage('assets/images/images.jpeg'), height: 60 , width: 100,)),
                Padding(
                  padding: const EdgeInsets.only( left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(
                          'Hatha Yoga:',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.black54),
                        ),
                         Text(
                          'Explore yours inner landscpe',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                              color: Colors.black54),
                        ),
                         Text(
                          'Throught yoga poses',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                              color: Colors.black54),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ),
          Container(height: 20,),

          
          Container(
            width: 450,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 1,
                  color: Colors.black12,
                  blurRadius: 15,
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image(
                        image: AssetImage('assets/images/images1.jpeg'),
                        height: 60,
                        width: 100,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'yin Yoga:',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.black54),
                        ),
                        Text(
                          'Explore yours inner landscpe',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                              color: Colors.black54),
                        ),
                        Text(
                          'Throught yoga poses',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(height: 8,),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(onPressed: null, icon: Icon(Icons.arrow_back_ios, size: 25, color: Colors.black,)),
        IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.home,
                    size: 25,
                    color: Colors.black,
                  )),
                  IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.access_time,
                    size: 25,
                    color: Colors.black,
                  ))
      ],
    ),
         ],
      ),
    );
  }
}