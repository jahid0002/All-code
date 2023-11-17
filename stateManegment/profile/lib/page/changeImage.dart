import 'dart:io';

import 'package:flutter/material.dart';
import 'package:profile/provider/profileProvider.dart';
import 'package:provider/provider.dart';

class ChangeImage extends StatefulWidget {
  const ChangeImage({super.key});

  @override
  State<ChangeImage> createState() => _ChangeImageState();
}

class _ChangeImageState extends State<ChangeImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: Text(
          'Update your profile picture',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SafeArea(child: Center(
          child: Consumer<ProfileProvider>(builder: ((context, value, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            value.isCompleted
                ? CircleAvatar(
                    backgroundImage: FileImage(File(value.imagePath!)),
                    radius: 80,
                  )
                : const CircleAvatar(
                    backgroundImage: AssetImage('images/image.png'),
                    radius: 80,
                  ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                value.imagePicker(); 
                
              }, 
              child: Container(
                alignment: Alignment.center,
                height: 35,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue.shade400,
                ),
                child: Text('Update picture'),
              ),
            ),
          ],
        );
      })))),
    );
  }
}
