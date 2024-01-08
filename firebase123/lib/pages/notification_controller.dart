import 'dart:math';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:app_settings/app_settings.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationControllers {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

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
      print('usser granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print('usser provisonial granted permission');
    } else {
      AppSettings.openAppSettings();
      print('usser not granted');
    }
  }

  Future<void> initLocalNotification(
      BuildContext context, RemoteMessage message) async {
    var androidInitializationSettings =
        const AndroidInitializationSettings('@mipmap/ic_launcher');

    var iosInitializationSettings = const DarwinInitializationSettings();

    var initializationSettings = InitializationSettings(
      android: androidInitializationSettings,
      iOS: iosInitializationSettings,
    );

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (payload) {},
    );
  }

  void firebaseInit(BuildContext context) {
    FirebaseMessaging.onMessage.listen((messages) {
      print(messages.notification!.title.toString());
      print(messages.notification!.body.toString());

      initLocalNotification(context, messages);

      showNotification(messages);
    });
  }

  Future<void> showNotification(RemoteMessage messages) async {
    AndroidNotificationChannel androidNotificationChannel =
        AndroidNotificationChannel(
      Random.secure().nextInt(1000).toString(),
      'Vary important name',
      importance: Importance.max,
    );

    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      androidNotificationChannel.id,
      androidNotificationChannel.name,
      importance: Importance.high,
      ticker: 'ticker',
      priority: Priority.high,
    );
    DarwinNotificationDetails darwinNotificationDetails =
        const DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentBanner: true,
      presentSound: true,
    );

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );

    Future.delayed(Duration.zero, () {
      flutterLocalNotificationsPlugin.show(
          0,
          messages.notification!.body.toString(),
          messages.notification!.title.toString(),
          notificationDetails);
    });
  }

  Future<String?> getDivicstoken() async {
    String? token = await messaging.getToken();
    return token!;
  }
}
