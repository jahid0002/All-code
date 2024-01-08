import 'package:firebase_messaging/firebase_messaging.dart';

class NotificatioSetup {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  void notificationRequest() async {
    NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        announcement: true,
        badge: true,
        carPlay: true,
        criticalAlert: true,
        provisional: true,
        sound: true);

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('user granted permision');
    } else if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('user granted provision permition ');
    } else {
      print('user denaid');
    }
  }
}
