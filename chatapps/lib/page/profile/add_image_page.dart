import 'dart:io';

import 'package:chatapps/page/profile/add_image_controller.dart';
import 'package:chatapps/widget/arrow_icon.dart';
import 'package:chatapps/widget/round_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddImage extends StatefulWidget {
  const AddImage({super.key});

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  final controller = Get.put(AddImageController());
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: ArrowBackIcon(onPressed: () {
          Get.back();
        }),
        title: Text(
          'Add Image',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 15.0, left: 15),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            InkWell(
              onTap: () {
                controller.getImage();
              },
              child: GetBuilder<AddImageController>(builder: (get) {
                return Container(
                    height: height * 0.25,
                    width: MediaQuery.sizeOf(context).width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black)),
                    child: controller.image == null
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(Icons.image,
                                  size: 40, color: Colors.black),
                              Text('Select',
                                  style: Theme.of(context).textTheme.titleSmall)
                            ],
                          )
                        : Image.file(
                            File(controller.image!.path),
                            fit: BoxFit.fill,
                          ));
              }),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            GetBuilder<AddImageController>(
              builder: (coext) {
                return RoundButton(
                    name: 'Save',
                    loading: controller.loading,
                    onTap: () {
                      controller.uploadImage();
                    });
              }
            )
          ],
        ),
      ),
    );
  }
}
