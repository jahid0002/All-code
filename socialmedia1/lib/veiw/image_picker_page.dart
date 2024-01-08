import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialmedia1/const/app_color.dart';
import 'package:socialmedia1/veiw/profile_controller.dart';
import 'package:socialmedia1/widget/back_icon.dart';
import 'package:socialmedia1/widget/round_button.dart';

class ImagePickerPage extends StatefulWidget {
  const ImagePickerPage({super.key});

  @override
  State<ImagePickerPage> createState() => _ImagePickerPageState();
}

class _ImagePickerPageState extends State<ImagePickerPage> {
  final controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: ArrowBackIcon(
            onPressed: () {
              Get.back();
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20),
          child: GetBuilder<ProfileController>(builder: (get) {
            return Column(
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                InkWell(
                  onTap: () {
                    controller.getImage();
                  },
                  child: Container(
                      alignment: Alignment.center,
                      height: height * 0.20,
                      width: width,
                      decoration: BoxDecoration(
                        border:
                            Border.all(width: 2, color: AppColors.primaryColor),
                      ),
                      child: controller.image == null
                          ? const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.image,
                                  size: 30,
                                ),
                                Text('Select'),
                              ],
                            )
                          : Image.file(
                              File(controller.image!.path),
                              fit: BoxFit.fill,
                            )),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                RoundButton(
                  name: "Save",
                  onTap: () {
                    controller.uploadImage();
                  },
                  loading: controller.imageLoading,
                ),
              ],
            );
          }),
        ));
  }
}
