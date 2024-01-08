import 'package:flutter/material.dart';
import 'package:socialmedia1/const/app_color.dart';

class ArrowBackIcon extends StatelessWidget { 


  final VoidCallback onPressed;
  const ArrowBackIcon({super.key, required this.onPressed});
  
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.arrow_back_ios_new,
          size: 18,
          color: AppColors.primaryTextTextColor,
        ));
  }
}
