import 'package:class18/page/put/put_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PutPage extends StatelessWidget {
  PutPage(
      {super.key,
      required this.avater,
      required this.name,
      required this.index});
  final String avater;
  final String name;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, size: 18, color: Colors.white),
            onPressed: () {
              Get.back();
            },
          ),
          title: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(avater),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                name,
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ],
          )),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {
                showEditDialog(context, name, index);
              },
              icon: const Icon(Icons.edit, color: Colors.black)),
          IconButton(
              onPressed: () {
                showDeleteDialog(context, index);
              },
              icon: const Icon(Icons.delete, color: Colors.black)),
        ],
      ),
    );
  }

  final controller = Get.put(PutController());
  final nameController = TextEditingController();
  final jobController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  Future<void> showEditDialog(
      BuildContext context, String name, int index) async {
    nameController.text = name;
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'Edit',
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(color: Colors.black),
            ),
            content: Form(
                key: formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: nameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter Name',
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 1,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 2,
                                color: Colors.green,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 2,
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: TextFormField(
                          controller: jobController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter job';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Enter Job',
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1,
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 2,
                                  color: Colors.green,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 2,
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancel',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(color: Colors.black),
                  )),
              TextButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      controller.putData(nameController.text.toString().trim(),
                          jobController.text.toString().trim(), index);
                      Navigator.pop(context);
                    }
                  },
                  child: Text(
                    'Save',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(color: Colors.black),
                  ))
            ],
          );
        });
  }

  Future<void> showDeleteDialog(BuildContext context, int index) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'Are you sior',
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(color: Colors.black),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancel',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(color: Colors.black),
                  )),
              TextButton(
                  onPressed: () {
                    controller.deleteData(index.toString());
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Delete',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(color: Colors.black),
                  ))
            ],
          );
        });
  }
}
