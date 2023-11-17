import 'package:flutter/material.dart';

class ShoppingProvider with ChangeNotifier {
  int _add = 1;
  int get add => _add;

  void shoppinAdd() {
    _add++;
    notifyListeners();
  }

  void shoppingRemove() {
    if (_add > 1) {
      _add--;
      notifyListeners();
    }
  }
}
