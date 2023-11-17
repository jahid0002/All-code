import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFFDFE9FD),
        child: Column(
          children: [
            Container(
              height: 10,
            ),
            Text(
              'Skin FLUME',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                  fontSize: 20),
            ),
            Container(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFFDFE9FD),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 15,
                              color: Colors.black,
                              offset: Offset(4, 4),
                              spreadRadius: 1),
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 1,
                            offset: Offset(-4, -4),
                            blurRadius: 8,
                          )
                        ],
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFFDFE9FD),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(4, 4),
                        spreadRadius: 1,
                        blurRadius: 15,
                        color: Colors.black,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 15,
                        offset: Offset(4, 4),
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child:
                      Image(image: AssetImage('assets/images/download1.png')),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFFDFE9FD),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 15,
                              color: Colors.black,
                              offset: Offset(4, 4),
                              spreadRadius: 1),
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 1,
                            offset: Offset(-4, -4),
                            blurRadius: 8,
                          ), 
                        ],
                      ),
                      child: Icon(
                        Icons.favorite,
                        size: 25,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                ),


              ],
            ),
          ],
        ),
      ),
    );
  }
}
