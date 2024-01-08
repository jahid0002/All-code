import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:socialmedia1/widget/flutter_toust.dart';

class MessageController extends GetxController {
  final auth = FirebaseAuth.instance;

  final database = FirebaseDatabase.instance.ref('meassage');
  final store = FirebaseFirestore.instance;

  void sendMessage() async {
    Tost().showError('call mathod');
    var data = {
      'notification': 'notification',
      'data': {
        'name': 'jahid',
        'id': '123',
      },
      'Authoraization': 'auth'
    };

    await store
        .collection('collection')
        .doc('doc')
        .collection('collection2')
        .add(data)
        .then((value) {
      Tost().showError('sucssesfully added');
    }).onError((error, stackTrace) {
      Tost().showError('Something wrong');
    });
  }
}
