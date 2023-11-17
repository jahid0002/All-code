import 'package:extra_class1/const/allText.dart';
import 'package:flutter/material.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left:20.0, right: 15),
              child: Column(
                    children: [
              const SizedBox(height: 30),
              Row(
                children: [
                  Image.asset(
                    'assets/images/food.jpg',
                    height: 50,
                    width: 50,
                  ),
                  AllText.text(
                      'Biznis Hub', Colors.purple.shade600, 24, FontWeight.w800),
                  const SizedBox(
                    width: 30,
                  ),
                  Card( 
                    elevation: 3,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                    color: Colors.purple.shade500,
                    child: SizedBox(
                        height: 45,
                        width: 203.4,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            hintText: 'Scearch...',
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search, color: Colors.white),
                          ),
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      child: Image.asset('assets/images/food2.jpg',
                          height: 200, width: size.width, fit: BoxFit.cover)),  


                          Positioned( 
                          left:20, 
                          top: 100,
                            child: Column(  
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               AllText.text('F  O  O  D', Colors.yellow, 22, FontWeight.w400), 
                               AllText.text(
                            '20% OFF', Colors.white, 30, FontWeight.w900),
                              ],
                            ),
                          ),
                          
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container( 
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.purple.shade600,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(
                                15,
                              ),
                              bottomRight: Radius.circular(15)),
                        ), 
                        child: const Icon(Icons.food_bank, color: Colors.white, size: 45),
                      ), 
                      AllText.text('Food', Colors.black87, 20, FontWeight.w400),
                    ],
                  ), 
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.purple.shade600,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(
                                15,
                              ),
                              bottomRight: Radius.circular(15)),
                        ),
                        child: const Icon(Icons.line_style,
                            color: Colors.white, size: 45),
                      ),
                      AllText.text('Fashion', Colors.black87, 20, FontWeight.w400),
                    ],
                  ), 
                  Column( 
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.purple.shade600,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(
                                15,
                              ),
                              bottomRight: Radius.circular(15)),
                        ),
                        child: const Icon(Icons.handyman,
                            color: Colors.white, size: 45),
                      ),
                      AllText.text('Hand', Colors.black87, 20, FontWeight.w400), 
                       AllText.text('Crafted', Colors.black87, 20, FontWeight.w400),
                    ],
                  ),
                ],
              ), 
              const SizedBox(height: 10), 
              Row( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ 
                  AllText.text('Fashion', Colors.black, 22, FontWeight.w800), 
                  AllText.text('See all', Colors.blue, 18, FontWeight.w700),
                ], 
                      
              ), 
               const SizedBox(height: 5), 
               Card(  
                shape: RoundedRectangleBorder( 
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 2,
                 child: SizedBox(
                  height: 200, 
                  width: size.width, 
                  child: Row( 
                    children: [
                      ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                         child: Image.asset('assets/images/fashion.jpg', height: 200, width: 200, fit: BoxFit.cover)),  
                         const SizedBox(width:14), 
                      
                         Column( 
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                                    const SizedBox(height: 20),  
                                    AllText.text('Lorem Ipsum', Colors.black, 25, FontWeight.w900),   
                                    const SizedBox(height: 10), 
                                     AllText.text('Lorem lpsum is simply \ndummy text of the printing \nand typesetting industry.\nLorem lpsum has been the \nindustrys\nstandard dummy text ever\nsince the 1500s ', 
                                     Colors.black, 15, FontWeight.w500),  
                                     const SizedBox(height: 10), 
                                     AllText.text('215.00 AED', Colors.purple.shade600, 25, FontWeight.w800)
                          ]
                         ),
                      
                    ],
                  ),
                 ),
               ),  
                      
               const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AllText.text('Hand Crafted', Colors.black, 22, FontWeight.w800),
                  AllText.text('See all', Colors.blue, 18, FontWeight.w700),
                ],
              ),  
                 const SizedBox(height: 5),
               Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 2,
                child: SizedBox(
                  height: 200,
                  width: size.width,
                  child: Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/images/fashion3.jpg',
                              height: 200, width: 200, fit: BoxFit.cover)),
                      const SizedBox(width: 14),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            AllText.text(
                                'Lorem Ipsum', Colors.black, 25, FontWeight.w900),
                            const SizedBox(height: 10),
                            AllText.text(
                                'Lorem lpsum is simply \ndummy text of the printing \nand typesetting industry.\nLorem lpsum has been the \nindustrys\nstandard dummy text ever\nsince the 1500s ',
                                Colors.black,
                                15,
                                FontWeight.w500),
                            const SizedBox(height: 10),
                            AllText.text('215.00 AED', Colors.purple.shade600, 25,
                                FontWeight.w800)
                          ]),
                    ],
                  ),
                ),
              ),  
                    ],
                  ),
            ),
          )),
    );
  }
}
