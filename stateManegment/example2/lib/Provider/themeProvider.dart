// ignore: file_names, unnecessary_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _flag = false;

  bool get flag => _flag;

  void darkmood() {
    if (_flag) {
      _flag = false;
      notifyListeners();
    } else {
      _flag = true;
      notifyListeners();
    }
  }

  var _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;

  void setTheme(themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
}
