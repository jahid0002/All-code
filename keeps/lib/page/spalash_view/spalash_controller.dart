import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:keeps/page/home_view/home_page.dart';
import 'package:keeps/page/login/login_page.dart';

class SpalashController {
  final auth = FirebaseAuth.instance;

  void nextPage() {
    final user = auth.currentUser;
    
    if (user != null) { 
      print(user.uid.toString());
      Get.offAll(() => HomePage());
    } else {
      Get.offAll(() => LoginPage());
    }
  }
}
