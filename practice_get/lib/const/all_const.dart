import 'package:flutter/material.dart';

class All {
 static text(String data, Color color, double d, FontWeight fontWeight) {
    return Text(
      data,
      style: TextStyle( 
        color: color, 
        fontSize: d, 
        fontWeight: fontWeight,  

      ),
    );
  }
}
