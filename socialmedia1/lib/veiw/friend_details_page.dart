import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialmedia1/const/app_color.dart';
import 'package:socialmedia1/veiw/profile_controller.dart';
import 'package:socialmedia1/widget/round_button.dart';

class FriendDetailsePage extends StatelessWidget {
  FriendDetailsePage({super.key, required this.userId});

  final userId;

  final controller = Get.put(ProfileController());
  final database = FirebaseDatabase.instance.ref('usser');

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0,
       title: Text('Profile', style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 21),),
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

            // create Map
            Map<dynamic, dynamic> map = snapshot.data!.snapshot.value as Map;
            Map<dynamic, dynamic> profile = map[userId.toString()];

            return Center(
              child: Padding(
                padding:
                    const EdgeInsets.only(right: 15.0, left: 15, bottom: 10),
                child: GetBuilder<ProfileController>(builder: (get) {
                  return Column(
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
                        leading: const Icon(Icons.person_2_outlined,
                            size: 30, color: Colors.black),
                        title: Text('usser name:',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    fontSize: 20, fontWeight: FontWeight.w600)),
                        trailing: Text(profile['name'].toString(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(fontSize: 20)),
                      ),
                      ListTile(
                        leading: const Icon(Icons.call_end_outlined,
                            size: 30, color: Colors.black),
                        title: Text(
                          'phone number:',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        trailing: Text(profile['phone'].toString(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(fontSize: 20)),
                      ),
                      ListTile(
                        leading: const Icon(Icons.email_outlined,
                            size: 30, color: Colors.black),
                        title: Text('Email:',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    fontSize: 20, fontWeight: FontWeight.w600)),
                        trailing: Text(profile['email'].toString(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(fontSize: 20)),
                      ),
                      SizedBox(
                        height: height * 0.07,
                      ),
                      RoundButton(
                        name: 'Back',
                        onTap: () {
                          Get.back();
                        },
                        loading: controller.loading,
                      )
                    ],
                  );
                }),
              ),
            );
          }),
    );
  }
}
