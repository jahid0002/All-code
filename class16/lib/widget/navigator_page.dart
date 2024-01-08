import 'package:class16/pages/auth_page/login_page.dart';
import 'package:class16/pages/auth_page/utils.dart';
import 'package:class16/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigatedPage {
  FirebaseAuth auth = FirebaseAuth.instance;
  void navigatedPage() {
    final usser = auth.currentUser;
    if (usser != null) {
      Get.off(() => const HomePage());
    } else {
      Get.off(() => const LoginPage());
    }
  }

  void logout() async {
    try {
      await auth.signOut().then((value) {
        // Get.off(() => LoginPage());
        Get.offAll(() => const LoginPage());
        Utilsh().showError('Sussecfully Logout', color: Colors.green);
      });
    } catch (e) {
      Utilsh().showError(e.toString());
    }
  }
}
