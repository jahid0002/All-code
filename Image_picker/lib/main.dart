import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? ImagePath;

  ImageSource source = ImageSource.camera;

          void funce( BuildContext context) async {
    final imagepath = await ImagePicker().pickImage(source: source);

    if (imagepath != null) {
      setState(() {
        ImagePath = imagepath.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Images',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              elevation: 10,
            
                  child: ImagePath == null
                      ? Image.asset('asstes/images/images1.png', width: 100, height: 100, fit: BoxFit.cover,)
                      : Image.file(File(ImagePath!,), height: 100, width: 100, fit: BoxFit.cover,)
                      
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                    onPressed: () {
                      source = ImageSource.camera;
                      funce(context);
                    },
                    icon: const Icon(
                      Icons.camera,
                      color: Colors.purple,
                    ),
                    label: const Text(
                      'Capture',
                      style: TextStyle(color: Colors.purple),
                    )),
                TextButton.icon(
                    onPressed: () {
                      source = ImageSource.gallery;
                       funce(context);
                    },
                    icon: const Icon(
                      Icons.photo,
                      color: Colors.purple,
                    ),
                    label:const Text(
                      'Gallary',
                      style: TextStyle(color: Colors.purple),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
