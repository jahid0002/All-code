import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationServices {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  void notificationSettings() async {
    NotificationSettings settings = await messaging.requestPermission(
      carPlay: true,
      sound: true,
      provisional: true,
      badge: true,
      alert: true,
      announcement: true,
      criticalAlert: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('usser permision granted');
    } else if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('usser provisinal permision granted');
    } else {
      print('permision not granted');
    }
  }

  /// apps forground e open then stream
  void firebaseNotifications() async {
    FirebaseMessaging.instance.getInitialMessage();

    FirebaseMessaging.onMessage.listen((message) {
      if (message.notification != null) {
        print(message.notification!.title);
        print(message.notification!.body);
      }
    });

    /// apps bacground e open then stream
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      if (message.notification != null) {
        print(message.notification!.title);
        print(message.notification!.body);
        print(message.data['path']);
      }
    });
    /// apps ta tottali kete dear por ata kaj korbe
    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message != null) {
        print(message.notification!.title);
        print(message.notification!.body);
        print(message.data['path']);
      }
    });
  }
}
