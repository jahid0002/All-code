import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialmedia1/veiw/message/message_controller.dart';
import 'package:socialmedia1/widget/back_icon.dart';

class ChatPage extends StatefulWidget {
  const ChatPage(
      {super.key,
      required this.receiverId,
      required this.receiverEmail,
      required this.receiverName});

  final String receiverId;
  final String receiverEmail;
  final String receiverName;
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final controller = Get.put(MessageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.receiverName,
          style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 21),
        ),
        elevation: 0,
        leading: ArrowBackIcon(onPressed: () {
          Get.back();
        }),
      ),
      body: Center(
        child: GetBuilder<MessageController>(builder: (ntext) {
          return TextButton(
            child: Text('FireStore'),
            onPressed: () {
              controller.sendMessage();
            },
          );
        }),
      ),
    );
  }
}
