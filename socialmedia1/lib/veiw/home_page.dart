import 'package:flutter/material.dart';
import 'package:socialmedia1/const/app_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
       backgroundColor: AppColors.primaryButtonColor,
        title: Text(
          'Home',
           style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Colors.white), 
        ),  
        elevation:  0,
      ),
    );
  }
}
