
import 'package:flutter/material.dart';

class ArrowBackIcon extends StatelessWidget {
  final VoidCallback onPressed;
 final Color color;
  const ArrowBackIcon({super.key, required this.onPressed, this.color = Colors.white, });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon:  Icon(
          Icons.arrow_back_ios_new,
          size: 18,
          color: color,
        ));
  }
}
