import 'dart:convert';
import 'dart:math';

import 'package:chatapps/widget/tost_message.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;

class NotificationController {
  final message = FirebaseMessaging.instance;

  void getPermission() async {
    NotificationSettings settings = await message.requestPermission(
      alert: true,
      sound: true,
      criticalAlert: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('permission accept');
    }
  }

  Future<String> gettoken() async {
    String? token = await message.getToken();
    return token!;
  }

  void showNotification() {
    FirebaseMessaging.instance.getInitialMessage();
    FirebaseMessaging.onMessage.listen((event) {
      print(event.notification!.body);
      plaginInatialize(event);
      plaginDetails(event);
    });
  }

  Future<void> sendNotification(
    String token,
    String msg,
    String name,
  ) async {
    var data = {
      'to': token,
      'priority': 'high',
      'notification': {
        'title': name,
        'body': msg,
      },
      'data': {'type': 'chat'}
    };

    try {
      http.Response response = await http.post(
          Uri.parse('https://fcm.googleapis.com/fcm/send'),
          body: jsonEncode(data),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization':
                'key=AAAAdSoyi80:APA91bFJL__Dld_JoQK-djvP7XjCfKIiyRbcOaoFP8MI8ovYk91kBNJBjq-Yog4w_pouOQbLzihj2k_2eR_ChX5OISEwkUmuNJy3cR-wtfr5aVcJgKRe6NFBn4ttsJXc_oLNt0ado6xt'
          });
      print(response.statusCode);
      if (response.statusCode == 200) {
        Tost().showError(response.body);
        print(response.body);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  final plagin = FlutterLocalNotificationsPlugin();

  void plaginInatialize(RemoteMessage message) async {
    var androidInitialize =
        const AndroidInitializationSettings('mipmap/ic_launcher');
    var iosInitialize = const DarwinInitializationSettings();
    var inatialize = InitializationSettings(
      android: androidInitialize,
      iOS: iosInitialize,
    );
    await plagin.initialize(
      inatialize,
      onDidReceiveNotificationResponse: (payload) {},
    );
  }

  void plaginDetails(RemoteMessage message) async {
    var androidChanel = AndroidNotificationChannel(
      Random().nextInt(1000).toString(),
      'Android Chanel',
      importance: Importance.high,
      playSound: true,
    );

    var androidDetails = AndroidNotificationDetails(
        androidChanel.id, androidChanel.name,
        ticker: 'ticker', priority: Priority.high, importance: Importance.max);

    var iosDetails = DarwinNotificationDetails();
    var notificationDetails =
        NotificationDetails(android: androidDetails, iOS: iosDetails);

    await Future.delayed(Duration.zero, () {
      plagin.show(0, message.notification!.title.toString(),
          message.notification!.body.toString(), notificationDetails);
    });
  }
}
