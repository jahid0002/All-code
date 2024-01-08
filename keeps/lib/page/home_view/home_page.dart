import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keeps/const/app_const_page.dart';
import 'package:keeps/page/home_view/home_controller.dart';
import 'package:keeps/widget/siliver_appbar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final user = auth.currentUser;
    return Scaffold(
      backgroundColor: AppConst.bacgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 15.0, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SiliverAppbar(
                photoUrl: user!.photoURL.toString(),
                onTap: () {
                  controller.logOut();
                },
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "Hi ${user.displayName.toString()}",
                style: Theme.of(context).textTheme.titleMedium,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add, size: 35, color: AppConst.bacgroundColor)),
    );
  }
}
