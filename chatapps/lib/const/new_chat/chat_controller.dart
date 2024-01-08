import 'dart:io';

import 'package:chatapps/const/color.dart';
import 'package:chatapps/const/new_chat/MessageModel.dart';
import 'package:chatapps/const/new_chat/notification_controller.dart';
import 'package:chatapps/widget/tost_message.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ChatController1 extends GetxController {
  final notification = NotificationController();
  final auth = FirebaseAuth.instance;
  final chatStore = FirebaseFirestore.instance.collection('chat');

  void sendMessage(
      String inputMessage, String receiverId, String token, String name) async {
    final uid = auth.currentUser!.uid.toString();

    Timestamp timestamp = Timestamp.now();

    var newMessage = MessageModel1(
      message: inputMessage,
      receiverId: receiverId,
      senderId: uid,
      timestamp: timestamp,
      type: 'message',
    );

    List<String> ids = [uid, receiverId];
    ids.sort();
    String chat_id = ids.join("_");

    await chatStore
        .doc(chat_id)
        .collection('message')
        .add(newMessage.map())
        .then((value) async {
      await notification
          .sendNotification(token, inputMessage, name)
          .then((value) {
        Tost().showError('Send Message', color: AppColors.successColor);
      }).onError((error, stackTrace) {
        Tost().showError('Send not Message');
      });
    });
  }

  Stream<QuerySnapshot> get(
    String receiverId,
  ) {
    final uId = auth.currentUser!.uid.toString();

    List<String> ids = [receiverId, uId];
    ids.sort();
    String chat_id = ids.join("_");

    return chatStore
        .doc(chat_id)
        .collection('message')
        .orderBy('timestamp', descending: true)
        .snapshots();
  }

  getDisplayMessage(snapshot) {
    if (!snapshot.hasData) {
      return Text('no Message');
    } else if (snapshot.hasError) {
      return Text('Error');
    } else if (snapshot.connectionState == ConnectionState.waiting) {
      return Text('Loading...');
    } else if (snapshot.hasData) {
      String _data = '';
      snapshot.data!.docs.map((e) {
        Map<String, dynamic> data = e.data() as Map<String, dynamic>;
        _data = data['message'].toString();
        update();
      });

      return Text(_data);
    } else {
      return Text('no Message');
    }
  }

  Stream<QuerySnapshot> getLustMessage(
    String receiverId,
  ) {
    final uId = auth.currentUser!.uid.toString();

    List<String> ids = [receiverId, uId];
    ids.sort();
    String chat_id = ids.join("_");

    return chatStore
        .doc(chat_id)
        .collection('message')
        .orderBy('timestamp', descending: true)
        .limit(1)
        .snapshots();
  }

  File? _image;
  File? get image => _image;

  final picker = ImagePicker();

  void getImage() async {
    final pickImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickImage != null) {
      _image = File(pickImage.path);
      update();
    }
  }

  bool _imageLoading = false;
  bool get imageLoading => _imageLoading;

  void sendImage(String uid, String name, String token) async {
    Timestamp timestamp = Timestamp.now();
    final String localUid = auth.currentUser!.uid.toString();
    final stroge = firebase_storage.FirebaseStorage.instance
        .ref('/Newfolder/${DateTime.now().microsecondsSinceEpoch.toString()}');
    var upload = stroge.putFile(_image!.absolute);
    _imageLoading = true;
    update();
    await Future.value(upload).then((value) async {
      String newUrl = await stroge.getDownloadURL();
      var newMessage = MessageModel1(
        message: newUrl,
        receiverId: uid,
        senderId: localUid,
        timestamp: timestamp,
        type: 'image',
      );

      List<String> ids = [localUid, uid];
      ids.sort();
      String chat_id = ids.join("_");

      await chatStore
          .doc(chat_id)
          .collection('message')
          .add(newMessage.map())
          .then((value) {
        Tost().showError('Image send');
        _imageLoading = false;
        update();
      }).onError((error, stackTrace) {
        _imageLoading = false;
        update();
      });
    }).onError((error, stackTrace) {
      _imageLoading = false;
      update();
      Tost().showError('Image not send');
    });
  }
}
