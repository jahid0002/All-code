import 'package:flutter/material.dart';

class Oprovider with ChangeNotifier {
  double _value = 1;

  double get value => _value;

  void setValue(double val) {
    _value = val;
    notifyListeners();
  }
}
