import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:socialmedia1/service/session_service.dart';
import 'package:socialmedia1/veiw/bottom_nav_ber.dart';

import 'package:socialmedia1/veiw/loginPage.dart';

class SpalashService {
  FirebaseAuth auth = FirebaseAuth.instance;

  void getScrean() async {
    final usser = auth.currentUser;

    // ignore: unnecessary_null_comparison
    if (usser != null) {
      SessionController().userId = usser.uid.toString();
      Get.offAll(() => const BottomNavBer());
    } else {
      Get.offAll(() => const LoginPage());
    }
  }
}
