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
        colorSchemeSeed: Colors.purple,
        datePickerTheme: DatePickerThemeData(shadowColor: Colors.black, shape: Border(bottom:BorderSide(style: BorderStyle.solid)))
      ),
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
        child:Stack(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              color: Color.fromARGB(179, 234, 230, 230),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(179, 234, 230, 230),
                          
                          maxRadius: 20,
                          child: IconButton(onPressed: null, icon: Icon(Icons.chat_bubble_outline, color: Colors.black,))),
                      ),

                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: CircleAvatar(
                            backgroundColor: Color.fromARGB(179, 234, 230, 230),
                            maxRadius: 20,
                            child: IconButton(
                                onPressed: null, icon: Icon(Icons.cottage_outlined, color: Colors.black,))),
                          ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: CircleAvatar(
                                                          backgroundColor: Color.fromARGB(179, 234, 230, 230),
                                                          maxRadius: 20,
                                                          child: IconButton(
                                                              onPressed: null, icon: Icon(Icons.arrow_back_outlined,color: Colors.black,))),
                                ),
                     
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 650,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),

                
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height: 450),
                   Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                    child: Text(
                      'Product description',
                      style: TextStyle(
                        fontFamily: 'font',
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Mangoes are sweet, creamy fruits that have a                                                                range of posibal health benefits',
                      style: TextStyle(
                        fontFamily: 'font',
                        fontSize: 14,
                      //  fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ),

                   Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 50, bottom: 5),
                    child: Text(
                      'Details',
                      style: TextStyle(
                        fontFamily: 'font',
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ),

                   Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                    child: Text(
                      'Weght: 1 kg',
                      style: TextStyle(
                        fontFamily: 'font',
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 280,
              width: MediaQuery.sizeOf(context).width,
              decoration:BoxDecoration(color:  Color.fromARGB(255, 3, 126, 60),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Padding(
                        padding: const EdgeInsets.only(left: 6.0, top: 8),
                        child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 3, 126, 60),
                                
                            maxRadius: 20,
                            child: IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ))),
                      ),
                        Padding(
                        padding: const EdgeInsets.only(top: 8.0, right: 10),
                        child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 3, 126, 60),
                            maxRadius: 20,
                            child: IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.child_friendly_rounded,
                                  color: Colors.white,
                                ))),
                      ),
                    ],
                  ),
                  Container(height: 20,),

                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Text('Mango', style: TextStyle(fontFamily: 'font',
                      fontSize: 35, fontWeight: FontWeight.w600,color: Colors.white,),),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'From',
                      style: TextStyle(
                        fontFamily: 'font',
                        fontSize: 22,
                        fontWeight: FontWeight.w300,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Tk 100',
                      style: TextStyle(
                         fontFamily: 'font',
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Sizes:',
                      style: TextStyle(
                         fontFamily: 'font',
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Medium',
                      style: TextStyle(
                         fontFamily: 'font',
                        fontSize: 22,
                        fontWeight: FontWeight.w300,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(left:20.0, top: 15),
                     child: CircleAvatar(
                      maxRadius: 20,
                      backgroundColor: Colors.white,
                       child: Icon(
                                      Icons.child_friendly_rounded,
                                      color: Colors.black,),
                     ),
                   ),
                  
                  
                ],
              ),
            ),
       
       Positioned(
        top: 130,
        right: 1,
        child: ClipRRect(
        
        
          child: Image(
            height: 300,
            width: 300,
            image: AssetImage('assets/images/mango1.png')),
       ))
          ],
        ),

      ),
    );
  }
}
