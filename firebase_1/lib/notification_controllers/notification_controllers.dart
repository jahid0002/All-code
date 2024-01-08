import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationControllers {
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
      print('Usser permition granted');
    } else if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('Usser provisinal permition granted');
    } else {
      print('Usser not granted');
    }
  }
}
