import 'dart:io';

import 'package:chatapps/const/color.dart';
import 'package:chatapps/const/new_chat/chat_controller.dart';
import 'package:chatapps/widget/arrow_icon.dart';
import 'package:chatapps/widget/round_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetImage extends StatelessWidget {
  GetImage(
      {super.key, required this.uid, required this.name, required this.token});
  final String uid;
  final String name;
  final String token;
  final controller = Get.put(ChatController1());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: ArrowBackIcon(
            onPressed: () {
              Get.back();
            },
            color: Colors.black,
          ),
          elevation: 0,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 18.0, left: 18),
            child: GetBuilder<ChatController1>(builder: (contet) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      controller.getImage();
                    },
                    child: Container(
                        height: MediaQuery.sizeOf(context).height * 0.15,
                        width: MediaQuery.sizeOf(context).width / 1.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              width: 3, color: AppColors.primaryColor),
                        ),
                        child: controller.image == null
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.image),
                                  Text('select image')
                                ],
                              )
                            : Image.file(
                                File(controller.image!.path),
                                fit: BoxFit.cover,
                              )),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.05,
                  ),
                  GetBuilder<ChatController1>(builder: (context) {
                    return RoundButton(
                        name: 'Send',
                        loading: controller.imageLoading,
                        onTap: () {
                          controller.sendImage(uid, name, token);
                          Get.back(); 
                          
                        });
                  })
                ],
              );
            }),
          ),
        ));
  }
}
