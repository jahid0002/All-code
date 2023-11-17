import 'package:class8/widget/allPage.dart';
import 'package:flutter/material.dart';

// assets image
class ImagesProvider extends ChangeNotifier {
  List imageList = [
    'assets/images/one.jpeg',
    'assets/images/two.jpeg',
    'assets/images/three.jpeg',
    'assets/images/four.jpeg',
    'assets/images/five.jpeg',
    'assets/images/six.jpeg',
    'assets/images/seven.jpeg',
    'assets/images/eight.jpeg',
  ];

// network images

  List networkList = [
    'https://unsplash.com/photos/a-close-up-of-a-clock-with-red-lights-on-it-uT4XkN39vcw',
    'https://unsplash.com/photos/plasma-ball-with-energy-rays-on-dark-background-physic-model-of-plasma-sphere-dUZbcc5YDf0',
    'https://unsplash.com/photos/turned-on-gray-laptop-computer-XJXWbfSo2f0',
    'https://unsplash.com/photos/macro-photography-of-black-circuit-board-FO7JIlwjOtU',
    'https://unsplash.com/photos/purple-and-blue-light-digital-wallpaper-8bghKxNU1j0',
    'https://unsplash.com/photos/monitor-showing-java-programming-OqtafYT5kTw',
  ];

// /bottom navigatio bar ///  screan list

  List<Widget> screanList = [
    const ListViewBuilder(),
    const ListViewSeparet(),
    const ListViewBuilderNetwork()
  ];

// /bottom navigatio bar ///  current index

  int _currIndex = 0;
  int get currIndex => _currIndex;

  void changeCurrIndex(int val) {
    _currIndex = val;
    notifyListeners();
  }
}
