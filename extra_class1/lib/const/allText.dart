import 'package:flutter/material.dart';

class AllText {
  static text(String title, Color color, double d, FontWeight fontWeight) {
    return Text(title, style: TextStyle(
      color: color, 
      fontSize: d, 
      fontWeight: fontWeight,
    ),);
  }
}
