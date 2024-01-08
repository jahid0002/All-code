import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:keeps/page/login/login_page.dart';

class HomeController extends GetxController {
  final auth = FirebaseAuth.instance;
  final googleSignIn = GoogleSignIn();

  void logOut() async {
   
    await auth.signOut().then((value) async {
      await googleSignIn.signOut().then((value) {
        Get.offAll(LoginPage());
      }).onError((error, stackTrace) {
        print(error.toString());
      });
    }).onError((error, stackTrace) {
      print(error.toString());
    });
  }
}
