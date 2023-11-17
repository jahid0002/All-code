import 'package:flutter/material.dart';

class AllText {
 static text(String title, Color color, double d, FontWeight fontWeight) {
    return Text(
      title,  
      style: TextStyle( 
        fontSize: d, 
        fontWeight: fontWeight, 
        color: color,
      )
    );
  }
}
