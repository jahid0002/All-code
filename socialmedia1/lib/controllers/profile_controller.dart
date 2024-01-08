import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:socialmedia1/const/app_color.dart';
import 'package:socialmedia1/service/session_service.dart';
import 'package:socialmedia1/veiw/bottom_nav_ber.dart';
import 'package:socialmedia1/widget/flutter_toust.dart';

class LoginController extends GetxController {
  // login auth
  bool _loading = false;
  bool get loading => _loading;
  final auth = FirebaseAuth.instance;

  Future<void> loginAuth(String email, String password) async {
    try {
      _loading = true;
      update();

      await auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        _loading = false;
        SessionController().userId = value.user!.uid;
        Tost().showError('Login sucsesfull', color: AppColors.successColor);
        Get.off(() => const BottomNavBer());
        update();
      }).onError((error, stackTrace) {
        _loading = false;

        Tost().showError(error.toString());
        update();
      });
    } catch (e) {
      _loading = false;
      Tost().showError(e.toString());
      update();
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
