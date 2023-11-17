import 'package:flutter/material.dart';

class Fruit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const  Text(
              'Back',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromARGB(221, 232, 228, 228)),
            )),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             const   SizedBox(
                height: 40,
              ),
              Card(
                elevation: 20,
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 200,
                  child:  const  Text(
                    'Fruits',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.red),
                  ),
                ),
              ),
             const   SizedBox(
                height: 70,
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 170,
                          width: 150,
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                child: Image.asset('images/download3.png'),
                              ),
                             const   Text(
                                'Jackfrut',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      Container(
                          height: 170,
                          width: 150,
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                child: Image.asset('images/fruits/img1.png'),
                              ),
                           const   Text(
                                'Clementine',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 170,
                          width: 150,
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                child: Image.asset('images/fruits/img2.png'),
                              ),
                            const Text(
                                'Pineapple',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 170,
                          width: 150,
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                child: Image.asset('images/fruits/img3.png'),
                              ),
                            const  Text(
                                'Apricots',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 170,
                          width: 150,
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                child: Image.asset('images/fruits/img4.png'),
                              ),
                            const  Text(
                                'Blueberry',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 170,
                          width: 150,
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                child: Image.asset('images/fruits/img5.png'),
                              ),
                          const    Text(
                                'Banana',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 170,
                          width: 150,
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                child: Image.asset('images/fruits/img6.png'),
                              ),
                            const  Text(
                                'Mango',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 170,
                          width: 150,
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                child: Image.asset('images/fruits/img7.png'),
                              ),
                            const  Text(
                                'Apple',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 170,
                          width: 150,
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                child: Image.asset('images/fruits/img8.png'),
                              ),
                            const  Text(
                                'Papaya',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
