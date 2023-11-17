import 'package:flutter/material.dart'; 


Widget text(String title, double size, FontWeight fontWeight, Color color ){
  return Text(
    title, style: TextStyle(
      fontSize: size, 
      fontWeight: fontWeight, 
      color: color, 
    ),
  );
}

Widget customAppBar() {
  return AppBar( 
    backgroundColor: Colors.purple.shade500,
    title: text('Image', 24, FontWeight.w700, Colors.white) , 
    leading: const Icon(Icons.home, color: Colors.white, size: 25,), 

  );
}
 

