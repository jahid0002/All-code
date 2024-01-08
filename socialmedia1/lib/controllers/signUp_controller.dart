import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:socialmedia1/const/app_color.dart';
import 'package:socialmedia1/service/session_service.dart';
import 'package:socialmedia1/widget/flutter_toust.dart';

class SignupController extends GetxController {
  /// user name methhod
  String? _userName;
  String? get userName => _userName;

  updateUserName(newUserName) async {
    _userName = await newUserName;
    update();
  }

  /// show password method
  bool _isShow = false;
  bool get isShow => _isShow;
  void showPassword() async {
    _isShow = !_isShow;
    update();
  }

  //// sign up method and save database
  bool _loading = false;
  bool get loading => _loading;
  final DatabaseReference database = FirebaseDatabase.instance.ref('usser');
  final FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> signUp(String name, String email, String password) async {
    try {
      _loading = true;
      update();
      await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
        SessionController().userId = value.user!.uid;
        database.child(value.user!.uid.toString()).set({
          'uid': value.user!.uid.toString(),
          'email': value.user!.email.toString(),
          'name': name,
          'password': password, 
          'phone' : 'none', 
          'active' : 'on' ,
           'image' : null
        }).then((value) {
          _loading = false;

          Tost()
              .showError(' Sign Up Sucsesfull', color: AppColors.successColor);
          Get.back();
          update();
        }).onError((error, stackTrace) {
          Tost().showError(error.toString());
        });
      }).onError((error, stackTrace) {
        Tost().showError(error.toString());
        print(error.toString());
        _loading = false;

        update();
      });
    } catch (e) {
      Tost().showError(e.toString());
      _loading = false;
      update();
    }
  }

  void addDatabase(UserCredential value, String name) async {
    await database.child(value.user!.uid.toString()).set({
      'uid': value.user!.uid.toString(),
      'email': value.user!.email.toString(),
      'name': name,
    }).then((value) {
      _loading = false;

      Tost().showError(' Sign Up Sucsesfull', color: AppColors.successColor);
      Get.back();
      update();
    }).onError((error, stackTrace) {
      Tost().showError(error.toString());
    });
  }

  void newDatabase() async {
    String id = DateTime.now().microsecondsSinceEpoch.toString();
    _loading = true;
    update();
    await database
        .child(id)
        .set({'id': id, 'name': 'name', 'email': 'email'}).then((value) {
      Tost().showError(' Sign Up Sucsesfull', color: AppColors.successColor);
      _loading = false;
      update();
    }).onError((error, stackTrace) {
      print(error.toString());
      Tost().showError(error.toString());
      _loading = false;
      update();
    });
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
