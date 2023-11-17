import 'package:flutter/material.dart';

TextStyle header = const TextStyle(
    fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black54);
TextStyle iformation = const TextStyle(
    fontSize: 46, color: Colors.black, fontWeight: FontWeight.w400);

// ignore: non_constant_identifier_names
Widget CurrentWeather(IconData icon, String weather, String location) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 64,
          color: Colors.orange,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          weather,
          style: iformation,
        ),
        const SizedBox(
          height: 0,
        ),
        Text(
          location,
          style: header,
        )
      ],
    ),
  );
}

Widget text(
  String text,
  Color color,
  FontWeight fontWeight,
  double size,
) {
  return Text(
    text,
    style: TextStyle(fontSize: size, fontWeight: fontWeight, color: color),
  );
}
