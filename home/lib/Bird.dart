import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';
import 'dart:ui_web';

class Bird extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Back',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(221, 232, 228, 228)),
            )),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              Card(
                elevation: 20,
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 200,
                  child: const Text(
                    'Birds',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(
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
                                child: ImageNetwork(
                                    height: 100,
                                    width: 100,
                                  image: ' https//:www.google.com/url?sa=i&url=https%3A%2F%2Fclipart-library.com%2Ffree%2Fbird-png-transparent.html&psig=AOvVaw3cEo4BCfM9XdYcTeyClDaw&ust=1696560446001000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNC66afy3YEDFQAAAAAdAAAAABAE '
                             ,),
                             
                              ),
                              const Text(
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
                                child: Image.asset('images/download4.png'),
                              ),
                              const Text(
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
                              const Text(
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
                              const Text(
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
                              const Text(
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
                              const Text(
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
                              const Text(
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
                              const Text(
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
