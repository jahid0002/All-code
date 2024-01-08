import 'package:class16/pages/auth_page/database_page.dart';
import 'package:class16/pages/auth_page/utils.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DatabaseController extends GetxController {
  bool _isPost = true;
  bool get isPost => _isPost;

  final database = FirebaseDatabase.instance.ref('post');

  void addDatabase(String postClt) async {
    String id = DateTime.now().millisecondsSinceEpoch.toString();
    try {
      _isPost = false;
      update();
      await database.child(id).set({
        'title': postClt,
        'discription': id,
      }).then((value) {
        _isPost = true;
        update();
        Get.to(() => const DatabasePage());
        Utilsh().showError('Post sucsesfully add', color: Colors.green);
      }).onError((error, stackTrace) {
        _isPost = true;
        update();
        Utilsh().showError(error.toString());
      });
    } catch (e) {
      Utilsh().showError(e.toString());
    }
  }

  void deleteDatabase(String id) async {
    try {
      await database.child(id).remove().then((value) {
        Utilsh().showError('Delete sucsesfull', color: Colors.green);
      }).onError((error, stackTrace) {
        Utilsh().showError(error.toString());
      });
    } catch (e) {
      Utilsh().showError(e.toString());
    }
  }

  void updateDatabase(String id, String title) async {
    try {
      await database.child(id).update({
        'title': title,
      }).then((value) {
        Utilsh().showError('Update sucsesfull', color: Colors.green);
      }).onError((e, stackTrace) {
        Utilsh().showError(e.toString());
      });
    } catch (e) {
      Utilsh().showError(e.toString(),);
    }
  }
}
