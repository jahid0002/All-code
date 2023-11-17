import 'package:flutter/material.dart';

class Flower extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: TextButton(onPressed:(){ Navigator.pop(context);}, 
        child: Text('Back', style: TextStyle(fontSize: 20,
         fontWeight: FontWeight.w500,
          color: const Color.fromARGB(221, 232, 228, 228)),) ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40,),
              Card(
                elevation: 20,
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 200,
                  child: Text(
                    'Flowers',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.red),
                  ),
                ),
              ),
        
              SizedBox(height: 70,),
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
                                child: Image.asset('images/download1.png'),
                              ),
                              Text('Rose', style: TextStyle(fontSize: 14, color: Colors.black87, fontWeight: FontWeight.w500),)
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
                                child: Image.asset('images/flower/pic1.png'),
                              ),
                              Text(
                                'Daisy',
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
                                child: Image.asset('images/flower/pic2.png'),
                              ),
                              Text(
                                'Tulip',
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
                                child: Image.asset('images/flower/pic3.png'),
                              ),
                              Text('Jasmin', style: TextStyle(fontSize: 14, color: Colors.black87, fontWeight: FontWeight.w500),)
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
                                child: Image.asset('images/flower/pic4.png'),
                              ),
                              Text(
                                'Lutas',
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
                                child: Image.asset('images/flower/pic5.png'),
                              ),
                              Text(
                                'Magnolia',
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
                                child: Image.asset('images/flower/pic6.png'),
                              ),
                              Text('Sun Flower', style: TextStyle(fontSize: 14, color: Colors.black87, fontWeight: FontWeight.w500),)
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
                                child: Image.asset('images/flower/pic7.png'),
                              ),
                              Text(
                                'Balsam',
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
                                child: Image.asset('images/flower/pic8.png'),
                              ),
                              Text(
                                'Lavender',
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
