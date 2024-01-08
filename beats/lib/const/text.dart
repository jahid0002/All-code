import 'package:flutter/material.dart';

class All {
  static text(String data,
      {double? size = 20.0,
      FontWeight? fontWeight = FontWeight.bold,
      color = Colors.white}) {
    return Text(
      data,
      style: TextStyle(fontSize: size,color: color,fontWeight: fontWeight, ),
    );
  }
}
