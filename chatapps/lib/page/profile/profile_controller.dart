import 'package:chatapps/page/login/loging_page.dart';
import 'package:chatapps/widget/tost_message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final auth = FirebaseAuth.instance;
  final store = FirebaseFirestore.instance.collection('user');

  void updateProfile(String key, String value) async {
    final userId = auth.currentUser!.uid;
    try {
      await store.doc(userId.toString()).update({key: value}).then((value) {
        Tost().showError('Update sucsesfull', color: Colors.green);
      }).onError((error, stackTrace) {
        Tost().showError(error.toString());
      });
    } catch (e) {
      Tost().showError(
        e.toString(),
      );
    }
  }

  bool _loading = false;
  bool get loading => _loading;
  void logOut() async {
    _loading = true;
    update();
    await auth.signOut().then((value) {
      Get.offAll(const LoginPage()); 
       _loading = false;
      update();
      Tost().showError('Log out sucsesfully', color: Colors.green);
    }).onError((error, stackTrace) { 
       _loading = false;
      update();
      Tost().showError(error.toString());
    });
  }
}
