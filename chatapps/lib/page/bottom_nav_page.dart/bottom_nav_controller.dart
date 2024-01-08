import 'package:chatapps/const/color.dart';
import 'package:chatapps/const/new_chat/notification_controller.dart';
import 'package:chatapps/widget/tost_message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  CollectionReference<Map<String, dynamic>> store =
      FirebaseFirestore.instance.collection('user');

  void isActive() async {
    final uId = auth.currentUser!.uid.toString();

    if (store.where('uid', isEqualTo: uId) == true) {
      await store.doc(uId).update({
        'active': true,
      });
    } else {
      await store.doc(uId).update({
        'active': false,
      });
    }
  }

  NotificationController notificationController = NotificationController();

  void getUpdateToken() async {
    final uId = auth.currentUser!.uid.toString();
    String token = await notificationController.gettoken();

    try {
      await store.doc(uId).update({
        "userToken": token,
      }).then((value) {
        Tost().showError('Token collected', color: AppColors.successColor);
      }).onError((error, stackTrace) {
        Tost().showError('Token not collected');
      });
    } catch (e) {
      Tost().showError(e.toString());
    }
  }
}
