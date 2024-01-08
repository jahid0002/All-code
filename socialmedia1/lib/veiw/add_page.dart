

import 'package:flutter/material.dart';
import 'package:socialmedia1/const/app_color.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        backgroundColor: AppColors.primaryButtonColor,
        elevation: 0,
        title: Text(
          'Add' ,  style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}