import 'package:class8/controller/imageProvider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Consumer<ImagesProvider>(
        builder: (context, data, child) {
          return data.screanList[data.currIndex];
        },
      ),
      bottomNavigationBar: Consumer<ImagesProvider>(
        builder: (context, data, child) {
          return BottomNavigationBar(
              selectedFontSize: 19,
              unselectedFontSize: 15,
              selectedItemColor: Colors.purple,
              unselectedItemColor: Colors.blueGrey,
              currentIndex: data.currIndex,
              onTap: (value) {
                data.changeCurrIndex(value);
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.image_aspect_ratio_outlined, size: 20,),
                    label: 'Assets Image'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.image, size: 20,), label: 'Separeted'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.image_aspect_ratio_outlined, size: 20,),
                    label: 'Image Network'),
              ]);
        },
      ),
    );
  }
}
