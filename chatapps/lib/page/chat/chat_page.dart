import 'package:chatapps/page/chat/conversition_page.dart';
import 'package:chatapps/page/login/loging_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final store = FirebaseFirestore.instance.collection('user').snapshots();
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final userId = auth.currentUser!.uid;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                auth.signOut();
                Get.offAll(LoginPage());
              },
              icon: Icon(Icons.abc, color: Colors.white))
        ],
        backgroundColor: Colors.black87,
        title: Text(
          'Chat Friends',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.01,
          ),
          StreamBuilder<QuerySnapshot>(
              stream: store,
              builder: ((context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                      child: CircularProgressIndicator(color: Colors.black));
                }
                if (snapshot.hasError) {
                  return const Center(child: Text('Something wrong...'));
                }
                return ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      if (snapshot.data!.docs[index]['uid'].toString() ==
                          userId) {
                        return Container();
                      } else {
                        return Padding(
                          padding: const EdgeInsets.only(
                            right: 15.0,
                            left: 15,
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                onTap: () {
                                  Get.to(() => ConversitionPage(
                                        image: snapshot.data!.docs[index]
                                            ['image'],
                                        name: snapshot.data!.docs[index]['name']
                                            .toString(),
                                        uId: snapshot.data!.docs[index]['uid'],
                                      ));
                                },
                                tileColor: Colors.black12,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                leading: snapshot.data!.docs[index]['image'] ==
                                        null
                                    ? const CircleAvatar(
                                        backgroundColor: Colors.white38,
                                        radius: 30,
                                        child: Icon(
                                          Icons.person,
                                          size: 50,
                                        ),
                                      )
                                    : CircleAvatar(
                                        radius: 30,
                                        backgroundImage: NetworkImage(snapshot
                                            .data!.docs[index]['image']
                                            .toString()),
                                      ),
                                title: Text(
                                  snapshot.data!.docs[index]['name'].toString(),
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                subtitle: Text(
                                  snapshot.data!.docs[index]['email']
                                      .toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(fontSize: 16),
                                ),
                                trailing: const Icon(Icons.message, size: 30),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.01,
                              )
                            ],
                          ),
                        );
                      }
                    });
              })),
        ],
      ),
    );
  }
}
