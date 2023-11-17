// ignore: file_names
import 'package:extra_class1/const/allText.dart';
import 'package:flutter/material.dart';

class ThardPage extends StatelessWidget {
  const ThardPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: AllText.text('Face Mask', Colors.black, 24, FontWeight.w900),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(
            Icons.store,
            color: Colors.black,
            size: 30,
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.0, left: 10),
            child: Icon(Icons.shopping_cart, color: Colors.black, size: 30),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:20.0, right: 20),
                child: Column( 
                 
                  children: [
                    Card( 
                      elevation: 5,
                      child: Image.asset('assets/images/mask.png',
                          height: 350, width: size.width, fit: BoxFit.cover),
                    ),
                    Column( 
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        AllText.text(
                            'Face mask', Colors.black, 25, FontWeight.w800),
                        const SizedBox(
                          height: 5,
                        ),
                        Row( 
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AllText.text(
                                '1box/50 masks', Colors.black, 15, FontWeight.w200),
                            Row(
                              children: [
                                AllText.text(
                                    '15.00', Colors.black, 20, FontWeight.w800), 
                                    AllText.text(
                                    'AED', Colors.black, 14, FontWeight.w800),
                              ],
                            ),
                          ],
                        ),  
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(), 
                        const SizedBox(
                          height: 10,
                        ),  
                        AllText.text('Description', Colors.black, 22, FontWeight.w600), 
                        const SizedBox(
                          height: 5,
                    ),
                   
                        
                         AllText.text('The word "mask" appeared in English in the 1530s, from Middle French masque "covering to hide or guard the face", derived in turn from Italian maschera, from Medieval Latin masca "mask, specter, nightmare".[1] This word is of uncertain origin, perhaps from Arabic maskharah مَسْخَرَۃٌ "buffoon", from the verb sakhira "to ridicule". However, it may also come from Provençal mascarar "to black (the face)" (or the related Catalan mascarar, Old French mascurer).', Colors.black, 17, FontWeight.w300)
                      ],
                    ) ],
                ),
              ), 
              Positioned( 
                right: 40,  
                top: 330,
                child: Container(
                  height: 50, 
                  width: 50, 
                  decoration: const BoxDecoration( 
                    color: Colors.black, 
                    borderRadius: BorderRadius.only( topLeft: Radius.circular(13), bottomLeft: Radius.circular(13), bottomRight: Radius.circular(13))
                  ), 
                  child: const Icon(Icons.favorite, color:Colors.white, size: 30,)
                ),
              ), 
              Positioned( 
                 left: 40,
                top: 325,
                child: Card(  
                  elevation: 10,
                  shadowColor: Colors.black45,
                  shape: const RoundedRectangleBorder( 
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15,), bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))
                  ),
                  child: Container( 
                    alignment: Alignment.center,
                    height: 50,  
                    width: 100, 
                    color: Colors.white30,  
                    child: Row(   
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [ 
                        AllText.text('5', Colors.black87, 25, FontWeight.w700), 
                        const Icon(Icons.star, color: Colors.black)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ), 
      bottomNavigationBar: SizedBox(
        height: 150,   
        child: Padding(
          padding: const EdgeInsets.only(left:20.0, right: 20),
          child: Column(children: [ 
            const SizedBox(height: 20,),
            Row( 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ 
                Row(
                  children: [ 
                    Container( 
                      alignment: Alignment.center,
                      height: 30, 
                      width: 30, 
                      decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.black45),
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5)),
                      ), 
                      child: AllText.text('-', Colors.black, 22, FontWeight.w500,), 
        
                    ), 
                    const SizedBox(
                      width: 30 
        
                    ), 
                    AllText.text(
                        '2',
                        Colors.black,
                        24,
                        FontWeight.w500,
                      ),  
                       const SizedBox(width: 30), 
                     Container( 
                      alignment: Alignment.center,
                      height: 30, 
                      width: 30, 
                      decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.black45),
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5)),
                      ), 
                      child: AllText.text('+', Colors.black, 22, FontWeight.w500,), 
        
                    ),  
        
                  ],
                ),  

                AllText.text(
                    '30AED',
                    Colors.black,
                    26,
                    FontWeight.w600,
                  ), 
        
              ],
            ),   
             const SizedBox(height: 15), 
        
            const SizedBox(height: 10,),  
            Container( 
              alignment: Alignment.center,
              height: 45, 
              width: size.width, 
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), 
                color: Colors.black
              ),
              child: AllText.text('Oder', Colors.white, 23, FontWeight.w800),
            ),
            
          ],),
        ),
      ),
    );
  }
}
