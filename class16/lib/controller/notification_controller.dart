// ignore: depend_on_referenced_packages
import 'dart:io';
import 'dart:math';

import 'package:class16/pages/notification_page.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

class NotificationController {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  FlutterLocalNotificationsPlugin plugin = FlutterLocalNotificationsPlugin();
//// Notification request send
  Future<void> notificationRequest() async {
    // ignore: unused_local_variable
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      sound: true,
    );
  }

  /// Get Notificatio token
  Future<String> getDisplayToken() async {
    String? token = await messaging.getToken();
    return token!;
  }

  /// Firebase Notification listen
  void seeFirebase(BuildContext context) {
    FirebaseMessaging.onMessage.listen((message) {
      print(message.notification!.title);
      print(message.notification!.body);
      if (Platform.isAndroid) {
        initLocalPlugin(context, message);
      }
      showNotification(message);
    });
  }

  /// Local plagin init

  Future<void> initLocalPlugin(
      BuildContext context, RemoteMessage message) async {
    var androidInitializationSettings =
        const AndroidInitializationSettings('mipmap/ic_launcher');
    var iosInitializationSettings = const DarwinInitializationSettings();

    var initializationSettings = InitializationSettings(
      android: androidInitializationSettings,
      iOS: iosInitializationSettings,
    );

    await plugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (payload) {
        notificationPageHundaller(message);
      },
    );
  }

  //// show display notification

  Future<void> showNotification(RemoteMessage message) async {
    var androidChanel = AndroidNotificationChannel(
      Random.secure().nextInt(1000).toString(),
      'This is name',
      importance: Importance.max,
    );

    var androidNotificationDetails = AndroidNotificationDetails(
      androidChanel.id,
      androidChanel.name,
      ticker: 'ticker',
      importance: Importance.high,
      priority: Priority.high,
    );

    var iosNotificationDetails = const DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
      presentBanner: true,
      presentList: true,
    );

    var notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: iosNotificationDetails,
    );

    Future.delayed(Duration.zero, () {
      plugin.show(0, message.notification!.title.toString(),
          message.notification!.body.toString(), notificationDetails);
    });
  }

  void notificationPageHundaller(RemoteMessage message) {
    if (message.data['type'] == 'chat') {
      Get.to(const NotificationPage());
    }
  }
}
