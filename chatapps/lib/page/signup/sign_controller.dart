import 'package:chatapps/const/color.dart';
import 'package:chatapps/const/new_chat/notification_controller.dart';
import 'package:chatapps/page/bottom_nav_page.dart/bottom_navber.dart';

import 'package:chatapps/page/signup/signup_page.dart';
import 'package:chatapps/widget/tost_message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  bool _loading = false;
  bool get loading => _loading;
  FirebaseAuth auth = FirebaseAuth.instance;
  CollectionReference<Map<String, dynamic>> store =
      FirebaseFirestore.instance.collection('user');

  final controller = NotificationController();

  void signUp(
    String userName,
    String email,
    String password,
  ) async {     
     var token = await controller.gettoken();
    try { 
       
      _loading = true;
      update();
      await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
        final String uId = value.user!.uid.toString();
       
        store.doc(uId).set({
          'uid': uId,
          'email': email,
          'name': userName,
          'image': null,
          'active': true,
          'phone': '+8801',
          'birthday': '01:01:2000',
          'blood': '?',
          'profession': '?',
          'userToken': token
        }).then((value) {
          _loading = false;
          update();
          Tost().showError('Signup sucsesfully', color: AppColors.successColor);
          Get.offAll(() => const BottomNavBer());
        }).onError((error, stackTrace) async {
          await auth.currentUser!.delete().then((value) { Get.offAll(()=> const SignUpPage()); 
          Tost().showError('Token invaled');
          
          });
          _loading = false;
          update();
          print(error.toString());
          Tost().showError(error.toString());
        });
      }).onError((error, stackTrace) {
        _loading = false;
        print(error.toString());
        update();
        Tost().showError(error.toString());
      });
    } catch (error) {
      _loading = false;
      print(error.toString());
      update();
      Tost().showError(error.toString());
    }
  }

  /// show password method
  bool _isShow = false;
  bool get isShow => _isShow;
  void showPassword() async {
    _isShow = !_isShow;
    update();
  }

  /// text field validator

  String? validatePassword(String? value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value!.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Enter valid password';
      } else {
        return null;
      }
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
}
