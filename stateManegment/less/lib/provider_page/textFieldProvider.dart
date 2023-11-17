import 'dart:js';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class TextProvider with ChangeNotifier {
  bool _flag = true;

  bool get flag => _flag;

  void setVisibity() {
    _flag = !_flag;
    notifyListeners();
    ;
  }

  bool _cheak = true;
  bool get cheak => _cheak;
  String _errorMassege = '';
  String get errorMassege => _errorMassege;

  void cheakEmail(String val) {
    if (EmailValidator.validate(val) == false) {
      _cheak = false;
      _errorMassege = 'Email not validated';
      notifyListeners();
    } else {
      _cheak = true;
      notifyListeners();
    }
  }

  void cheakPass(String val) {
    if (val.length <= 7) {
      _cheak = false;
      _errorMassege = 'Password not strong';
      notifyListeners();
    } else {
      _cheak = true;
      notifyListeners();
    }
  }

  bool _indicator = false;
  bool get indicator => _indicator;
  void setLoding(bool val) {
    _indicator = val;
    notifyListeners();
  }

  String _Uemail = 'jahidhasan@gmail.com';
  String _Upass = '123456789';

  void submitedInformation(String email, String pass) {
    setLoding(true);
    notifyListeners();

    if (_Uemail == email && _Upass == pass) {
      setLoding(false);
      print('Login Sucsesful');
      notifyListeners();
    } else {
      setLoding(false);
      print('Login not sucsesful');
      notifyListeners();
    }
  }
}
