import 'package:chatapps/page/chat/chat_controller.dart';
import 'package:chatapps/page/chat/sender_profile.dart';
import 'package:chatapps/widget/arrow_icon.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConversitionPage extends StatefulWidget {
  const ConversitionPage(
      {super.key, required this.name, required this.image, required this.uId});
  final String name;
  final dynamic image;
  final String uId;
  @override
  State<ConversitionPage> createState() => _ConversitionPageState();
}

class _ConversitionPageState extends State<ConversitionPage> {
  final auth = FirebaseAuth.instance;
  final messageController = TextEditingController();
  final controller = Get.put(ChatController());

  void sendMessage() async {
    if (messageController.text.isNotEmpty) {
      controller.sendMessage(
          widget.uId, messageController.text.toString().trim());
      messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 70,
          backgroundColor: Colors.black,
          leading: Row(
            children: [
              ArrowBackIcon(onPressed: () {
                Get.back();
              }),
            ],
          ),
          title: InkWell(
            onTap: () {
              Get.to(SenderProfile(senderId:  widget.uId,));
            },
            child: SizedBox(
              child: Row(
                children: [
                  widget.image == null
                      ? const CircleAvatar(
                          backgroundColor: Colors.white38,
                          radius: 20,
                          child: Icon(
                            Icons.person,
                            size: 40,
                          ),
                        )
                      : CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              NetworkImage(widget.image.toString()),
                        ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    widget.name,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Padding(
            padding: const EdgeInsets.only(
                right: 15.0, left: 15, bottom: 15, top: 10),
            child: Column(
              children: [
                Expanded(
                  child: _buildMessageList(),
                ),
                _buildMessageInput(),
              ],
            ),
          ),
        ));
  }

  Widget _buildMessageList() {
    return StreamBuilder(
        stream:
            controller.getMessage(widget.uId, auth.currentUser!.uid.toString()),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text('error...');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator(color: Colors.white));
          }
          return ListView(
              children: snapshot.data!.docs
                  .map((docment) => _buildMessageItem(docment))
                  .toList());
        });
  }

  Widget _buildMessageItem(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    final userId = auth.currentUser!.uid;
    var align = data['senderId'].toString() == userId.toString()
        ? Alignment.centerRight
        : Alignment.centerLeft;
    return Container(
      alignment: align,
      child: Card(
        color: Colors.black26,
        elevation: 0,
        child: Padding(
          padding:
              const EdgeInsets.only(right: 25.0, left: 25, top: 5, bottom: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data['message'].toString(),
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Colors.black,
                    ),
              ),
              Text(
                '${DateTime.now().hour.toString()} : ${DateTime.now().minute.toString()} : ${DateTime.now().second.toString()}',
                style: const TextStyle(fontSize: 12, color: Colors.black87),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMessageInput() {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 50,
                child: TextFormField(
                  controller: messageController,
                  decoration: InputDecoration(
                      hintText: 'write message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
              ),
            ),
            IconButton(
                onPressed: () {
                  sendMessage();
                },
                icon: const Icon(Icons.send))
          ],
        ),
      ],
    );
  }
}
