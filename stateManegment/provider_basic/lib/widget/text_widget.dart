import 'package:flutter/material.dart';

Widget text(String txt, double size, Color color, FontWeight fontWeight) {
  return Text(txt, style: TextStyle(
    fontSize: size, color: color, fontWeight: fontWeight,
  ),);
}
