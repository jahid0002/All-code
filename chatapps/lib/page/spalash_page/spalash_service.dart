import 'package:chatapps/page/bottom_nav_page.dart/bottom_navber.dart';
import 'package:chatapps/page/login/loging_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SpalashService {
  final FirebaseAuth auth = FirebaseAuth.instance;

  void getScrean() async {
   // String uId = auth.currentUser!.uid;
    final user = auth.currentUser;

    if (user != null) {
      Get.off(() => const BottomNavBer());
    } else {
      Get.off(() => const LoginPage());
    }
  }
}
