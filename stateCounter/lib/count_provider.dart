import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class CountProvider with ChangeNotifier {
  String _count = DateTime.now().toString();

  String get count => _count;

  void Increment() {
    _count = DateTime.now().toString();
    notifyListeners();
  }
}
