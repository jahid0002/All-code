import 'dart:io';
import 'dart:math';

import 'package:app_settings/app_settings.dart';
import 'package:firebase123/pages/view/second_page.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationServices {
  final FirebaseMessaging messaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> notificationRequest() async {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: true,
      sound: true,
      carPlay: true,
      badge: true,
      criticalAlert: true,
      provisional: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('usser granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print('usser granted provisional permission');
    } else {
      AppSettings.openAppSettings();

      print('usser not granted');
    }
  }

  Future<String> getDisplayToken() async {
    String? token = await messaging.getToken();
    return token!;
  }

  Future<void> initLocalNotification(
      BuildContext context, RemoteMessage messages) async {
    var androidInitialization =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    var iosInitialization = const DarwinInitializationSettings();
    var initialization = InitializationSettings(
      android: androidInitialization,
      iOS: iosInitialization,
    );
    await flutterLocalNotificationsPlugin.initialize(initialization,
        onDidReceiveNotificationResponse: (payload) {
      handleMessage(context, messages);
    });
  }

  void initFirebase(BuildContext context) {
    FirebaseMessaging.onMessage.listen((messages) {
      print(messages.data);
      print(messages.data['chat']);

      if (Platform.isAndroid) {
        initLocalNotification(context, messages);
        showNotification(messages);
      } else {
        showNotification(messages);
      }
    });
  }

  Future<void> showNotification(RemoteMessage messages) async {
    AndroidNotificationChannel androidNotificationChannel =
        AndroidNotificationChannel(
            Random.secure().nextInt(1000).toString(), 'vary importance name',
            importance: Importance.max);

    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
            androidNotificationChannel.id, androidNotificationChannel.name,
            ticker: 'ticker',
            importance: Importance.high,
            priority: Priority.high);
    DarwinNotificationDetails darwinNotificationDetails =
        const DarwinNotificationDetails(
            presentAlert: true,
            presentBadge: true,
            presentBanner: true,
            presentList: true,
            presentSound: true);

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );

    Future.delayed(Duration.zero, () {
      flutterLocalNotificationsPlugin.show(
          0,
          messages.notification!.title.toString(),
          messages.notification!.body.toString(),
          notificationDetails);
    });
  }

  Future<void> setInteractMessage(BuildContext context) async {
    RemoteMessage? message =
        await FirebaseMessaging.instance.getInitialMessage();
    if (message != null) {
      // ignore: use_build_context_synchronously
      handleMessage(context, message);
    }

    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      handleMessage(context, event);
    });
  }

  void handleMessage(BuildContext context, RemoteMessage message) {
    if (message.data['chat'] == 'msg') {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const SecondPage()));
    }
  }
}
