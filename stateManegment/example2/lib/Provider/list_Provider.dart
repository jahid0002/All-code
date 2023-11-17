import 'package:flutter/material.dart';

class ListProvider with ChangeNotifier {
  List<int> _selectedItem = [];

  List<int> get selectedItem => _selectedItem;

  void listItem(int val) {
    if (_selectedItem.contains(val)) {
      _selectedItem.remove(val);
      notifyListeners();
    } else {
      _selectedItem.add(val);
      notifyListeners();
    }
  }
}
