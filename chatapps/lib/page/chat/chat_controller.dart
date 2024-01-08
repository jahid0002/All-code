import 'package:chatapps/page/chat/message_model.dart';
import 'package:chatapps/widget/tost_message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  final FirebaseAuth auth = FirebaseAuth.instance;

  final store = FirebaseFirestore.instance.collection('chat_room');

  void sendMessage(String receivedId, String message) async {
    String senderId = auth.currentUser!.uid.toString();

    Timestamp timestamp = Timestamp.now();

    final newMessage = MessageModel(
        message: message,
        receiverUserId: receivedId,
        senderUserId: senderId,
        timestamp: timestamp);

    List<String> ids = [senderId, receivedId];
    ids.sort();
    String chat_room_id = ids.join("_");

    await store
        .doc(chat_room_id)
        .collection('message')
        .add(newMessage.toMap())
        .then((value) {
      Tost().showError('Message send',color: Colors.green);
    }).onError((error, stackTrace) {
      Tost().showError(Error().toString());
    });
  }

  Stream<QuerySnapshot> getMessage(receiverId, otherId){
    List<String> ids = [receiverId, otherId];
    ids.sort();
    String chat_room_id = ids.join("_");
    return store
        .doc(chat_room_id)
        .collection('message')
        .orderBy('timestamp', descending: false)
        .snapshots();
  }
}
