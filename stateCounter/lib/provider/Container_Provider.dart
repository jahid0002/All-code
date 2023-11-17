import 'package:flutter/material.dart';

class ContainerProvider with ChangeNotifier {
  double _height = 100;
  double _width = 200;
  Color _col = Colors.purple.shade300;

  double get height => _height;
  double get width => _width;
  Color get col => _col;

  void set() {
    if (_height != 100) {
      _height = 100;
      _width = 200;
      _col = Colors.purple.shade300;
      notifyListeners();
    } else {
      _height = 200;
      _width = 100;
      _col = Colors.cyanAccent;
      notifyListeners();
    }
  }
}
