import 'package:flutter/material.dart';


Widget text(String txt, double size, FontWeight fontWeight, Color color) {
  return Text(
    txt,
    style: TextStyle(
      fontSize: size,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}
