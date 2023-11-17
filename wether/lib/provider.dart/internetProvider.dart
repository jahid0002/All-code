import 'dart:async';

import 'package:connectivity/connectivity.dart';

import 'package:flutter/material.dart';

class InternetProvider with ChangeNotifier {
  String _text = 'Loding';
  String get text => _text;
  Connectivity _connectivity = Connectivity();
  StreamSubscription? _bild;

  void internet() {
    _bild = _connectivity.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.mobile) {
        _text = 'Connect to Internet';
        notifyListeners();
      } else if (result == ConnectivityResult.wifi) {
        _text = 'Connect to WiFi';
        notifyListeners();
      } else {
        _text = 'no Internet';
        notifyListeners();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _bild?.cancel();
  }
}
