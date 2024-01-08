import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationServices {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  void notificationRequest() async {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('usser parmision granted');
    } else if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('usser provisional permision granted');
    } else {
      print('usser not granted');
    }
  }
}
