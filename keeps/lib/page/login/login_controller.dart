import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:keeps/page/home_view/home_page.dart';

class LoginController extends GetxController {
  final auth = FirebaseAuth.instance;
  final googleSignIn = GoogleSignIn();
  bool _loginLoading = false;
  bool get loginLoading => _loginLoading;

  void createAccount() async {
    _loginLoading = true;
    update();
    final GoogleSignInAccount? user = await googleSignIn.signIn();
    final GoogleSignInAuthentication? googleAuth = await user!.authentication;

    final credential = GoogleAuthProvider.credential(
      idToken: googleAuth!.idToken,
      accessToken: googleAuth.accessToken,
    );
    try {
      await auth.signInWithCredential(credential).then((value) {
        _loginLoading = false;
        update();
        Get.offAll(() => HomePage());
        print('Sign up sucsesful');
      }).onError((error, stackTrace) {
        _loginLoading = false;
        update();
        print('Worng information');
      });
    } catch (e) {}
  }
}
