import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:socialmedia1/const/app_color.dart';
import 'package:socialmedia1/veiw/loginPage.dart';
import 'package:socialmedia1/widget/flutter_toust.dart';

class ProfileController extends GetxController {
  final auth = FirebaseAuth.instance;

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

  final database = FirebaseDatabase.instance.ref('usser');

  void editDatabase(String value, String key) async {
    final uId = auth.currentUser!.uid.toString();

    try {
      await database.child(uId).update({
        key: value,
      }).then((value) {
        Tost().showError('Update Sucsesfully', color: AppColors.successColor);
      }).onError((error, stackTrace) {
        Tost().showError(error.toString());
      });
    } catch (e) {
      Tost().showError(e.toString());
    }
  }

  File? _image;
  File? get image => _image;

  final picker = ImagePicker();

  Future<void> getImage() async {
    final pickImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickImage != null) {
      _image = File(pickImage.path);
    }
  }

  final stroge = FirebaseStorage.instance
      .ref('/folder/' + DateTime.now().microsecondsSinceEpoch.toString());
  bool _imageLoading = false;
  bool get imageLoading => _imageLoading;

  Future<void> uploadImage() async {
    final uId = auth.currentUser!.uid.toString();
    final uploadFile = stroge.putFile(_image!.absolute);

   


   

    _imageLoading = true;

    update();
    await Future.value(uploadFile).then((value) async {
      var newUrl = await stroge.getDownloadURL();
      await database.child(uId).update({
        'image': newUrl,
      }).then((value) {
        _imageLoading = false;
        update();
        Tost().showError('Uploaded', color: AppColors.successColor);
      }).onError((error, stackTrace) {
        _imageLoading = false;
        update();
        Tost().showError(error.toString());
      }).onError((error, stackTrace) {
        _imageLoading = false;
        update();
        Tost().showError(error.toString());
      });
    });
  }
}
