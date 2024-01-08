import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialmedia1/const/app_color.dart';
import 'package:socialmedia1/service/session_service.dart';
import 'package:socialmedia1/veiw/message/chat_page.dart';
import 'package:socialmedia1/veiw/message/message_controller.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final controller = Get.put(MessageController());
  final DatabaseReference database = FirebaseDatabase.instance.ref('usser');
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryButtonColor,
        elevation: 0,
        title: Text(
          'Message',
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Colors.white),
        ),
      ),
      body: FirebaseAnimatedList(
          query: database,
          itemBuilder: (context, snapshot, animation, index) {
            if (snapshot.value == null) {
              return const Center(
                child: CircularProgressIndicator(color: AppColors.primaryColor),
              );
            } else {
              if (SessionController().userId.toString() ==
                  snapshot.child('uid').value) {
                return Container();
              } else {
                return Padding(
                  padding: const EdgeInsets.only(right: 15.0, left: 15),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      ListTile(
                        onTap: () {
                          Get.to(() => ChatPage(
                                receiverId:
                                    snapshot.child('uid').value.toString(),
                                receiverEmail:
                                    snapshot.child('email').value.toString(),
                                receiverName:
                                    snapshot.child('name').value.toString(),
                              ));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        tileColor: AppColors.grayColor,
                        leading: snapshot.child('image').value == null
                            ? const CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/images/person.png'),
                              )
                            : CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    snapshot.child('image').value.toString()),
                              ),
                        title: Text(snapshot.child('name').value.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(fontSize: 21)),
                        subtitle: const Text('Lust message'),
                        trailing: const Icon(
                          Icons.message,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                );
              }
            }
          }),
    );
  }
}
