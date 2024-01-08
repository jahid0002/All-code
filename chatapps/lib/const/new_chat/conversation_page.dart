import 'package:chatapps/const/new_chat/chat_controller.dart';
import 'package:chatapps/const/new_chat/get_image.dart';
import 'package:chatapps/page/chat/sender_profile.dart';
import 'package:chatapps/widget/arrow_icon.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConversationPage extends StatelessWidget {
  ConversationPage(
      {super.key,
      required this.name,
      required this.image,
      required this.uId,
      required this.token});
  final String name;
  final String image;
  final String uId;
  final String token;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.black,
          leading: ArrowBackIcon(onPressed: () {
            Get.back();
          }),
          title: InkWell(
            onTap: () {
              Get.to(SenderProfile(
                senderId: uId,
              ));
            },
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(image),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  name,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white),
                )
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(child: _buildMessageList(context)),
            _inputMessage()
          ],
        ));
  }

  final String senderuId = FirebaseAuth.instance.currentUser!.uid.toString();
  final controller = Get.put(ChatController1());

  Widget _buildMessageList(BuildContext context) {
    return StreamBuilder(
        stream: controller.get(uId),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('Error'),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            );
          } else {
            return ListView(
              reverse: true,
              children: snapshot.data!.docs
                  .map((e) => _buildMessageItem(context, e))
                  .toList(),
            );
          }
        });
  }

  Widget _buildMessageItem(
      BuildContext context, DocumentSnapshot documentSnapshot) {
    Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
    String id = data['senderId'].toString();
    var align = id != senderuId ? Alignment.centerLeft : Alignment.centerRight;

    var color = id != senderuId ? Colors.red.shade100 : Colors.blue.shade100;
    var borderRadias = id != senderuId
        ? const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15))
        : const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15));
    return Container(
      alignment: align,
      child: Padding(
        padding: EdgeInsets.only(
          right: 20,
          left: 20,
          top: 5,
        ),
        child: GetBuilder<ChatController1>(
          builder: (contxt) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                data['type'].toString().contains('message') ? 
                Container(
                  decoration: BoxDecoration(
                      borderRadius: borderRadias,
                      border: Border.all(
                        width: 3,
                        color: color,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 20.0, left: 20, bottom: 10, top: 10),
                    child: Text(
                      data['message'].toString(),
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(fontSize: 20), //textAlign: TextAlign.center,
                    ),
                  ),
                ) :  
                ClipRRect(  
                  //height: 200, 
                 // width: 200,
                  
                    borderRadius: borderRadias,
                  //  border: Border.all(width: 2, color: Colors.black),   
                    
                  
                  child:  Image.network(data['message'].toString())
                ),
              ],
            );
          }
        ),
      ),
    );
  }

  final messageController = TextEditingController();
  Widget _inputMessage() {
    return Padding(
      padding:
          const EdgeInsets.only(bottom: 20.0, left: 15, right: 15, top: 15),
      child: Row(
        children: [
          Expanded(
              child: Container(
            height: 50,
            child: TextFormField(
              controller: messageController,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        Get.to(()=>GetImage(uid: uId, name: name, token: token));
                      },
                      icon: Icon(Icons.image)),
                  hintText: 'Enter message',
                  hintStyle: TextStyle(fontSize: 15),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(width: 2, color: Colors.black))),
            ),
          )),
          IconButton(
              onPressed: () {
                if (messageController.text.isNotEmpty) {
                  controller.sendMessage(
                    messageController.text.toString().trim(),
                    uId,
                    token,
                    name,
                  );
                  messageController.clear();
                }
              },
              icon: const Icon(
                Icons.send,
                size: 35,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
