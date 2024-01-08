import 'dart:io';

import 'package:chatapps/widget/tost_message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddImageController extends GetxController {
  final auth = FirebaseAuth.instance;
  final store = FirebaseFirestore.instance.collection('user');
  final storage = FirebaseStorage.instance
      .ref('/newFolder/ ' + DateTime.now().microsecondsSinceEpoch.toString());

  File? _image;
  File? get image => _image;

  void getImage() async {
    final pickImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickImage != null) {
      _image = File(pickImage.path);
      update();
    }
  }

  bool _loading = false;
  bool get loading => _loading;

  void uploadImage() async {
    final upload = storage.putFile(_image!.absolute);
    _loading = true;
    update();
    await Future.value(upload).then((value) async {
      var newUrl = await storage.getDownloadURL();
      await store.doc(auth.currentUser!.uid.toString()).update({
        'image': newUrl,
      }).then((value) { 
         _loading = false;
        update();
        Tost().showError('Uploaded', color: Colors.green);
      }).onError((error, stackTrace) { 
         _loading = false;
        update();
        Tost().showError(error.toString());
      });
    }).onError((error, stackTrace) { 
       _loading = false;
      update();
      Tost().showError(error.toString());
    });
  }
}