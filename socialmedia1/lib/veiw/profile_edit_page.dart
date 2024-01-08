import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialmedia1/const/app_color.dart';
import 'package:socialmedia1/service/session_service.dart';
import 'package:socialmedia1/veiw/image_picker_page.dart';
import 'package:socialmedia1/veiw/profile_controller.dart';
import 'package:socialmedia1/widget/back_icon.dart';
import 'package:socialmedia1/widget/round_button.dart';
import 'package:socialmedia1/widget/text_form.dart';

class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({super.key});

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  final database = FirebaseDatabase.instance.ref('usser');

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0,
        leading: ArrowBackIcon(
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: StreamBuilder(
          stream: database.onValue,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primaryColor,
                ),
              );
            }
            Map<dynamic, dynamic> map = snapshot.data!.snapshot.value as Map;
            Map profile = map[SessionController().userId];
            return Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15, bottom: 10),
              child: SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: height * 0.0,
                        ),
                        profile['image'] != null
                            ? CircleAvatar(
                                radius: 70,
                                backgroundColor: Colors.black12,
                                backgroundImage: NetworkImage(profile['image']),
                              )
                            : const CircleAvatar(
                                radius: 70,
                                backgroundColor: Colors.black12,
                                backgroundImage:
                                    AssetImage('assets/images/person.png'),
                              ),
                        SizedBox(
                          height: height * 0.06,
                        ),
                        ListTile(
                            onTap: () {
                              getName(context, 'name', profile['name'].toString());
                            },
                            leading: const Icon(Icons.person_2_outlined,
                                size: 30, color: Colors.black),
                            title: Text('usser name:',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600)),
                            trailing: const Icon(Icons.edit,
                                size: 20, color: AppColors.primaryColor)),
                        ListTile( 
                            onTap: () {
                              getNumber(context, 'phone',
                                  profile['phone'].toString());
                            },
                            leading: const Icon(Icons.call_end_outlined,
                                size: 30, color: Colors.black),
                            title: Text(
                              'phone number:',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                            ),
                            trailing: const Icon(Icons.edit,
                                size: 20, color: AppColors.primaryColor)),
                        ListTile(
                          leading: const Icon(Icons.email_outlined,
                              size: 30, color: Colors.black),
                          title: Text('Email:',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600)),
                          trailing: Text(profile['email'].toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(fontSize: 20)),
                        ),
                        SizedBox(
                          height: height * 0.07,
                        ),
                        Builder(builder: (get) {
                          return RoundButton(
                              name: 'ok',
                              onTap: () {
                                Get.back();
                              });
                        })
                      ],
                    ),
                    Positioned(
                      top: height * 0.13,
                      right: height * 0.19,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 3,
                        shadowColor: AppColors.primaryColor,
                        child: InkWell(
                          onTap: () {
                            Get.to(() => const ImagePickerPage());
                          },
                          child: const CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Icon(Icons.add,
                                  size: 25, color: AppColors.grayColor)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  final nameController = TextEditingController();
  final nameFocas = FocusNode();
  final formKey = GlobalKey<FormState>();
  Future<void> getName(BuildContext context, String key, String value) {
    return showDialog(
        context: context,
        builder: (_) {
          nameController.text = value;
          return AlertDialog(
            title: Text(
              'Edit Name',
              style: Theme.of(context).textTheme.headline4,
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Form(
                    key: formKey,
                    child: TextForm(
                      controller: nameController,
                      hint: 'name',
                      onChanged: (value) {},
                      focusNode: nameFocas,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter name';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancel',
                    style: Theme.of(context).textTheme.headline6,
                  )),
              TextButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      controller.editDatabase(
                          nameController.text.toString().trim(), key);
                      Navigator.pop(context);
                    }
                  },
                  child: Text(
                    'Submit',
                    style: Theme.of(context).textTheme.headline6,
                  ))
            ],
          );
        });
  }

  final controller = Get.put(ProfileController());
  final numberController = TextEditingController();
  final numberFocas = FocusNode();
  final numformKey = GlobalKey<FormState>();
  Future<void> getNumber(BuildContext context, String key, String value) {
    return showDialog(
        context: context,
        builder: (_) {
          numberController.text = value;
          print(value);
          return AlertDialog(
            title: Text(
              'Edit Number',
              style: Theme.of(context).textTheme.headline4,
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Form(
                    key: formKey,
                    child: TextForm(
                      keybordType: TextInputType.number,
                      controller: numberController,
                      hint: 'number',
                      onChanged: (value) {},
                      focusNode: numberFocas,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter number';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancel',
                    style: Theme.of(context).textTheme.headline6,
                  )),
              TextButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      controller.editDatabase(
                          numberController.text.toString().trim(), 'phone');

                      Navigator.pop(context);
                    }
                  },
                  child: Text(
                    'Submit',
                    style: Theme.of(context).textTheme.headline6,
                  ))
            ],
          );
        });
  }

  @override
  void dispose() {
    super.dispose();

    nameController.dispose();
    numberController.dispose();
    nameFocas.dispose();
    numberFocas.dispose();
  }
}
