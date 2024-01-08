import 'package:chatapps/page/profile/add_image_page.dart';
import 'package:chatapps/page/profile/profile_controller.dart';
import 'package:chatapps/widget/round_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final controller = Get.put(ProfileController());
  FirebaseAuth auth = FirebaseAuth.instance;
  CollectionReference<Map<String, dynamic>> store =
      FirebaseFirestore.instance.collection('user');
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Profile',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: StreamBuilder(
          stream: store.doc(auth.currentUser!.uid.toString()).snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(child: Text('Loadin...'));
            }
            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 15),
                child: SingleChildScrollView(
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: height * 0.02,
                          ),
                          snapshot.data!['image'] == null
                              ? const CircleAvatar(
                                  backgroundColor: Colors.black38,
                                  radius: 60,
                                  child: Icon(Icons.person,
                                      size: 100, color: Colors.black),
                                )
                              : CircleAvatar(
                                  backgroundColor: Colors.black38,
                                  radius: 60,
                                  backgroundImage: NetworkImage(
                                      snapshot.data!['image'].toString()),
                                ),
                          Text(
                            snapshot.data!['name'].toString(),
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          SizedBox(
                            height: height * 0.06,
                          ),
                          ListTile(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            tileColor: Colors.black12,
                            leading: const Icon(Icons.email, size: 30),
                            title: Text(
                              'Email',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            trailing: Text(
                              snapshot.data!['email'].toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          ListTile(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            tileColor: Colors.black12,
                            leading: const Icon(Icons.call, size: 30),
                            title: Text(
                              'Phone',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            trailing: Text(
                              snapshot.data!['phone'].toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontSize: 18),
                            ),
                            subtitle: InkWell(
                              onTap: () {
                                editProfile(context, 'phone',
                                    snapshot.data!['phone'].toString());
                              },
                              child: Text(
                                'Edit',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          ListTile(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            tileColor: Colors.black12,
                            leading: const Icon(Icons.group, size: 30),
                            title: Text(
                              'Blood Group',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            trailing: Text(
                              snapshot.data!['blood'].toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontSize: 18),
                            ),
                            subtitle: InkWell(
                              onTap: () {
                                editProfile(context, 'blood',
                                    snapshot.data!['blood'].toString());
                              },
                              child: Text(
                                'Edit',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          ListTile(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            tileColor: Colors.black12,
                            leading: const Icon(Icons.work, size: 30),
                            title: Text(
                              'Pofession',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            trailing: Text(
                              snapshot.data!['profession'].toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontSize: 18),
                            ),
                            subtitle: InkWell(
                              onTap: () {
                                editProfile(context, 'profession',
                                    snapshot.data!['profession'].toString());
                              },
                              child: Text(
                                'Edit',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          ListTile(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            tileColor: Colors.black12,
                            leading: const Icon(Icons.date_range, size: 30),
                            title: Text(
                              'Date Of Birt',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            trailing: Text(
                              snapshot.data!['birthday'].toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontSize: 18),
                            ),
                            subtitle: InkWell(
                              onTap: () {
                                editProfile(context, 'birthday',
                                    snapshot.data!['birthday'].toString());
                              },
                              child: Text(
                                'Edit',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          RoundButton(
                              name: 'Log Out',
                              loading: controller.loading,
                              onTap: () {
                                controller.logOut();
                              })
                        ],
                      ),
                      Positioned(
                          top: height * 0.12,
                          right: height * 0.16,
                          child: InkWell(
                            onTap: () {
                              Get.to(()=>const AddImage());
                            },
                            child: const CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.black,
                                child: Icon(Icons.add,
                                    size: 22, color: Colors.white)),
                          ))
                    ],
                  ),
                ),
              );
            }
            return const Center(
              child: CircularProgressIndicator(color: Colors.black),
            );
          }),
    );
  }

  final editController = TextEditingController();
  Future<void> editProfile(BuildContext context, String key, String value) {
    editController.text = value;
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Edit ${key}'),
            content: Container(
              height: 50,
              child: TextFormField(
                controller: editController,
                decoration: InputDecoration(
                  hintText: '$key',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1, color: Colors.black),
                  ),
                ),
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancel',
                    style: Theme.of(context).textTheme.titleMedium,
                  )),
              TextButton(
                  onPressed: () {
                    if (editController.text.isNotEmpty) {
                      controller.updateProfile(
                          key, editController.text.toString().trim());
                      editController.clear();
                      Navigator.pop(context);
                    }
                  },
                  child: Text(
                    'Submit',
                    style: Theme.of(context).textTheme.titleMedium,
                  )),
            ],
          );
        });
  }
}
