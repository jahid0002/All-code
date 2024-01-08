import 'dart:convert';

import 'package:class16/controller/notification_controller.dart';
import 'package:http/http.dart' as http;

class ApiController {
  NotificationController notificationController = NotificationController();

  Future<void> sendNotification() async {
    notificationController.getDisplayToken().then((value) async {
      var data = {
        'to': value.toString(),
        'priority': 'high',
        'notification': {
          'title': 'Chat Pad',
          'body': 'This is Notification',
        },
        'data': {
          'type': 'chat',
        }
      };

      await http.post(Uri.parse('https://fcm.googleapis.com/fcm/send'),
          body: jsonEncode(data),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization':
                'key=AAAAgh2m8Rg:APA91bFJOdKIzww7V6IBu9fBA-dccsb5_l1Ny2Om4fSIg4DyBzstwhxQeVH7b-e0PAbikjG3ogM5p7DTWMpgtLF70CFFxSbFDG6WISkNWhEQVzHLbVzxgbg2QD83bM3Y7hGNOVjJJJ_r'
          });
    });
  }
}
