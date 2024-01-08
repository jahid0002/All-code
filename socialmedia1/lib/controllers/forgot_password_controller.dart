import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:socialmedia1/const/app_color.dart';

import 'package:socialmedia1/veiw/loginPage.dart';
import 'package:socialmedia1/widget/flutter_toust.dart';



class ForgotPasswordController extends GetxController {
  // login auth
  bool _loading = false;
  bool get loading => _loading;
  final auth = FirebaseAuth.instance;

  Future<void> forgotPasswordAuth(String email) async {
    try {
      _loading = true;
      update();

      await auth
          .sendPasswordResetEmail(email: email)
          .then((value) {
        _loading = false;
      
        Tost().showError('Forgot sucsesfull cheak your email', color: AppColors.successColor);
        Get.off(() => const LoginPage());
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

  /// text field validator

 

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
