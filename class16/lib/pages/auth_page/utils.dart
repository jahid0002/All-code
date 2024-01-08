


import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utilsh{

  void showError(String error, {Color color = Colors.red}){
    Fluttertoast.showToast(
        msg: error,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: color,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}