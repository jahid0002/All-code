import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AllText extends StatelessWidget {
  String data;
  double size;
  FontWeight fontWeight;
  // ignore: non_constant_identifier_names
  Color Colors;

  AllText({super.key, required this.data, required this.Colors, required this.size, required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: Colors,
      ),
    );
  }
}
