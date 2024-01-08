import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel1 {
  String message;
  String senderId;
  String receiverId;
  Timestamp timestamp;
  String type;

  MessageModel1(
      {required this.message,
      required this.receiverId,
      required this.senderId,
      required this.timestamp, 
      required this.type
      });

  Map<String, dynamic> map() {
    return {
      'message': message,
      'senderId': senderId,
      'receiverId': receiverId,
      'timestamp': timestamp, 
      'type' : type,
    };
  }
}
