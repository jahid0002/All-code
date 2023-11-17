// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:practice10/image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'App',
      home: Homescren(),
      color: Color.fromARGB(255, 233, 235, 211),
    );
  }
}

class Homescren extends StatefulWidget {
  const Homescren({super.key});

  @override
  State<Homescren> createState() => _HomescrenState();
}

class _HomescrenState extends State<Homescren> {
  File? img;

  void selectImage() async {
    final _img = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      if (_img != null) {
        img = File(_img.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
            style: TextStyle(
              fontSize: 21,
              // backgroundColor: Colors.purple,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              // alignment: Alignment.center,
              height: 500,
              width: double.infinity,
              color: Colors.blueAccent,
              child: img == null
                  ? const Text('No image selected')
                  : Image.file(img!)
              // color: Colors.cyanAccent,
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                      onPressed: null,
                      splashColor: Colors.lightBlueAccent,
                      // shape:Border.all(color: Colors.black),
                      child: Icon(Icons.camera)),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    onPressed: () {
                      selectImage();
                    },
                    child: Icon(Icons.browse_gallery),
                    focusColor: Colors.black,
                    splashColor: Colors.blueAccent,
                    // shape: Border.all(color: Color(1)),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
