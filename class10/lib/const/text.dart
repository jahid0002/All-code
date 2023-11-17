import 'package:flutter/material.dart';

class AllText {
  static Widget icon(IconData icon, double size, Color color) {
    return Icon(
      icon,
      size: size,
      color: color,
    );
  }

  static Widget text(
      String data, double size, FontWeight fontWeight, Color color) {
    return Text(
      data,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
