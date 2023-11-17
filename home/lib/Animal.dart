import 'package:flutter/material.dart';

class Animal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
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
              SizedBox(
                height: 40,
              ),
              Card(
                elevation: 20,
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 200,
                  child: Text(
                    'Animals',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.red),
                  ),
                ),
              ),
              SizedBox(
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
                                child: Image.asset('images/download2.png'),
                              ),
                              Text(
                                'Lion',
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
                                child: Image.asset('images/animal/animal1.png'),
                              ),
                              Text(
                                'Cat',
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
                                child: Image.asset('images/animal/animal2.png'),
                              ),
                              Text(
                                'Elephent',
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
                                child: Image.asset('images/animal/animal9.png'),
                              ),
                              Text(
                                'Dog',
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
                                child: Image.asset('images/animal/animal4.png'),
                              ),
                              Text(
                                'Mankey',
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
                                child: Image.asset('images/animal/animal5.png'),
                              ),
                              Text(
                                'Cow',
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
                                child: Image.asset('images/animal/animal6.png'),
                              ),
                              Text(
                                'Deer',
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
                                child: Image.asset('images/animal/animal10.png'),
                              ),
                              Text(
                                'Dankey',
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
                                child: Image.asset('images/animal/animal8.png'),
                              ),
                              Text(
                                'Hourse',
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
