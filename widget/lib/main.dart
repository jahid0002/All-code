import 'package:flutter/material.dart';

import 'button.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var counter = 1;

  void func() {
    setState(() {
      counter++;
    });
  }

  void func2() {
    if (counter > 1) {
      setState(() {
        counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: const Color.fromARGB(77, 90, 84, 84),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(100))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        width: MediaQuery.sizeOf(context).width,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: CircleAvatar(
                              radius: 20,
                              child: IconButton(
                                  onPressed: null,
                                  color: Colors.white,
                                  icon: Icon(Icons.clear_all)),
                            ),
                          ),
                          Container(
                            width: 380,
                          ),
                          CircleAvatar(
                              maxRadius: 20,
                              backgroundColor: Colors.white,
                              child: Center(
                                  child: IconButton(
                                      onPressed: null,
                                      icon: Icon(Icons.add_shopping_cart)))),
                        ],
                      ),
                      Container(
                        height: 35,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Men Shoe',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          '*  4.5',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Size  -  9',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Brand : Adidas',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: true,
                  child: Positioned(
                    top: 250,
                    left: 25,
                    child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )),
                  ),
                ),
                Positioned(
                    left: 200,
                    right: -100,
                    bottom: -10,
                    child: CircleAvatar(
                        backgroundColor: Colors.pink,
                        maxRadius: 90,
                        child: Image(
                            image: AssetImage('assets/images/adidas.png'))))
              ],
            ),
            Container(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                'Description',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                'It is new branded assces shoe.                                                            This is specally for sport playrs. It is only                                                                  one color',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                'Quantity',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Button(
                    btnName: '-',
                    colors: Colors.white,
                    callBack: () {
                      func2();
                    },
                  ),
                ),
                Button(
                  btnName: '+',
                  colors: Colors.white,
                  callBack: () {
                    func();
                  },
                ),
                Container(
                  width: 10,
                ),
                Text(
                  '$counter',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),

              ],
            ),

            Container(height:50 ,),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Text('tk', style: TextStyle(
                    fontSize: 18,
                  ),),
                ),
                Text('1000', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                Container(width: 200,),
                Container(
                  alignment: Alignment.center,
                  height: 70,
                  width: 208,
                 decoration: BoxDecoration(
                   color: Colors.pink,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40))),
                  child: Text('Buy Now', style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
