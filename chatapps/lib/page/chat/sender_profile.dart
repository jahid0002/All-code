import 'package:chatapps/widget/arrow_icon.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SenderProfile extends StatefulWidget {
  const SenderProfile({super.key, required this.senderId});
  final String senderId;

  @override
  State<SenderProfile> createState() => _SenderProfileState();
}

class _SenderProfileState extends State<SenderProfile> {
  FirebaseAuth auth = FirebaseAuth.instance;
  CollectionReference<Map<String, dynamic>> store =
      FirebaseFirestore.instance.collection('user');
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        leading: ArrowBackIcon(
          color: Colors.white,
          onPressed: () {
          Get.back();
        }),
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
          stream: store.doc(widget.senderId).snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(child: Text('Loadin...'));
            }
            if (snapshot.hasData) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0, left: 15),
                  child: SingleChildScrollView(
                    child: Column(
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
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                      ],
                    ),
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
}
