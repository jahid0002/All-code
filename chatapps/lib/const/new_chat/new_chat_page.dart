import 'package:chatapps/const/new_chat/chat_controller.dart';
import 'package:chatapps/const/new_chat/conversation_page.dart';
import 'package:chatapps/const/new_chat/notification_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class NewChatPage extends StatelessWidget {
  NewChatPage({super.key});

  final FirebaseAuth auth = FirebaseAuth.instance;
  CollectionReference<Map<String, dynamic>> store =
      FirebaseFirestore.instance.collection('user');
  final chatController = Get.put(ChatController1());
  String? _message;
  NotificationController notificationController = NotificationController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  notificationController.gettoken().then((value) {
                    print("Token : ${value.toString()}");
                  });
                },
                icon: Icon(Icons.add)),
          ],
          backgroundColor: Colors.black,
          leading: const Icon(Icons.message, color: Colors.white),
          title: Text(
            'Chat Friends',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 15.0, left: 15),
          child: StreamBuilder(
              stream: store.snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(
                    child: CircularProgressIndicator(color: Colors.black),
                  );
                } else if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(color: Colors.black),
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: ((context, index) {
                        if (snapshot.data!.docs[index]['uid'].toString() ==
                            auth.currentUser!.uid.toString()) {
                          return Container();
                        } else {
                          return Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: StreamBuilder(
                                stream: chatController.getLustMessage(snapshot
                                    .data!.docs[index]['uid']
                                    .toString()),
                                builder: (context, snapshott) {
                                  if (snapshott.hasData) {
                                    List<String> list = snapshott.data!.docs
                                        .map((e) => lustMessage(e))
                                        .toList();
                                    if (list.isNotEmpty) {
                                      _message = list[0];
                                    }

                                    return ListTile(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      tileColor: Colors.black12,
                                      leading: snapshot.data!.docs[index]
                                                  ['image'] ==
                                              null
                                          ? const CircleAvatar(
                                              radius: 25,
                                              child:
                                                  Icon(Icons.person, size: 40),
                                            )
                                          : CircleAvatar(
                                              radius: 25,
                                              backgroundImage: NetworkImage(
                                                  snapshot.data!
                                                      .docs[index]['image']
                                                      .toString()),
                                            ),
                                      title: Text(
                                        snapshot.data!.docs[index]['name']
                                            .toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                      subtitle: _message == null
                                          ? Text('')
                                          : Text(_message!),
                                      trailing: Icon(Icons.message),
                                      onTap: () {
                                        Get.to(() => ConversationPage(
                                              name: snapshot
                                                  .data!.docs[index]['name']
                                                  .toString(),
                                              image: snapshot
                                                  .data!.docs[index]['image']
                                                  .toString(),
                                              uId: snapshot
                                                  .data!.docs[index]['uid']
                                                  .toString(),
                                              token: snapshot.data!
                                                  .docs[index]['userToken']
                                                  .toString(),
                                            ));
                                      },
                                    );
                                  } else {
                                    return Text('');
                                  }
                                }),
                          );
                        }
                      }));
                }
              }),
        ));
  }

  String lustMessage(QueryDocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;

    if (data['type'] == 'image') {
      return 'image';
    }
    return data['message'].toString();
  }
}
