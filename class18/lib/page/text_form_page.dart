import 'package:class18/api_sevice/api_controller.dart';
import 'package:class18/widget/my_button.dart';
import 'package:class18/widget/text_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFormPage extends StatefulWidget {
  const TextFormPage({super.key});

  @override
  State<TextFormPage> createState() => _TextFormPageState();
}

class _TextFormPageState extends State<TextFormPage> {
  final nameController = TextEditingController();
  final jobController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final controller = Get.put(ApiController());

  @override
  void dispose() {
    super.dispose();

    nameController.dispose();
    jobController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Text Input',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 10.0, left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container( 
                 // color: Colors.white38,
                  alignment: Alignment.center,
                  height: height / 2.5,
                  child: Card(
                   // color: Colors.white38,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 2,
                    shadowColor: Colors.black,
                    child: Center(
                      child: Form(
                          key: formKey,
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Name',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium!
                                        .copyWith(color: Colors.black),
                                  ),
                                  InputText(
                                    controller: nameController,
                                    hintText: 'Enter name',
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter your name';
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Text(
                                    'Job',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium!
                                        .copyWith(color: Colors.black),
                                  ),
                                  InputText(
                                    controller: jobController,
                                    hintText: 'Enter job',
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter your job';
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: height * 0.06,
                                  ),
                                  GetBuilder<ApiController>(builder: (conext) {
                                    return MyButton(
                                        loading: controller.loading,
                                        buttonName: 'Post',
                                        onTap: () {
                                          if (formKey.currentState!
                                              .validate()) {
                                            controller.sendData(
                                                nameController.text.toString(),
                                                jobController.text.toString());
                                          }
                                        });
                                  })
                                ],
                              ),
                            ),
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
