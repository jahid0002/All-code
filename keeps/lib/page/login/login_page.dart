import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keeps/const/app_const_page.dart';
import 'package:keeps/page/login/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppConst.bacgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 15.0, left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/keeps.png',
                      height: 200,
                    ),
                    Text(
                      AppConst.appName,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(
                      height: height / 10,
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  controller.createAccount();
                },
                child: GetBuilder<LoginController>(
                  builder: (contxt) {
                    return Container(
                      alignment: Alignment.center,
                      height: height * 0.07,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppConst.appbarColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: !controller.loginLoading ?  Text(
                        'Sign up with google',
                        style: Theme.of(context).textTheme.titleMedium,
                      ) : Center(child: CircularProgressIndicator(color: Colors.white),),
                    );
                  }
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: height * 0.07,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppConst.appbarColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Sign up with facebook',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}   

//