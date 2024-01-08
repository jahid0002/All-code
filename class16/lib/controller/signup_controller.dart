import 'package:class16/pages/auth_page/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  bool _isSignup = true;

  bool get isSignup => _isSignup;

  Future<void> usserSignup(
      BuildContext context, String email, String pass) async {
    _isSignup = false;
    update();
    try {
      await auth
          .createUserWithEmailAndPassword(email: email, password: pass)
          .then((value) { 

            Get.back();
        Utilsh().showError('Signup secsesfull', color: Colors.green);
        _isSignup = true;
        
        update();
      }).onError((error, stackTrace) {
        Utilsh().showError(error.toString().trim());
        _isSignup = true;
        update();
      });
    } catch (e) {
      Utilsh().showError(e.toString().trim());
    }
  }

  String? validateEmail(String? value) {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid email address'
        : null;
  } 

  
  bool _visibal = true;
  bool get visibal => _visibal;

  void isVisibal() {
    _visibal = !_visibal;
    update();
  }
} 
