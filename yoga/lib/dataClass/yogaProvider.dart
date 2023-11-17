import 'dart:async';

import 'package:flutter/material.dart';

import 'package:yoga/pages/countPage.dart';
import 'package:yoga/pages/finish.dart';

class YogaProvider extends ChangeNotifier {
  YogaProvider(context) {
    ready(context);
  }
  int _count = 5;
  int get count => _count;

  ready(context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      _count--;

      if (_count == 0) {
        timer.cancel();
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const CountPage()));
      }
      notifyListeners();
    });
  }
}

class YogaData extends ChangeNotifier {
  YogaData(context) {
    Start(context);
  }
  bool _cheak = false;
  bool get cheak => _cheak;
  int _Count = 30;
  int get Count => _Count;

  void toggul() {
    _cheak = !_cheak;

    notifyListeners();
  }

  // ignore: non_constant_identifier_names
  Start(context) {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_Count == 0) {
        timer.cancel();
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => const FinishPage())));
        notifyListeners();
      } else {
        _Count--;

        ///   notifyListeners();
        notifyListeners();
      }
    });
  }

  void restart() {
    _Count = 30;
    notifyListeners();
  }
}
