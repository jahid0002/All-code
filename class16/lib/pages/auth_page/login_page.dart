import 'package:class16/controller/login_controller.dart';
import 'package:class16/pages/auth_page/phone_number_varified_page.dart';
import 'package:class16/pages/auth_page/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool show = true;
  void isShow() async {}

  final emailClt = TextEditingController();
  final passClt = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailClt.dispose();
    passClt.dispose();
  }

  LoginController login = Get.put(LoginController());
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            backgroundColor: Colors.blue.shade700,
            title: const Text(
              'Login',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            )),
        body: GetBuilder<LoginController>(builder: (get) {
          return SizedBox(
            height: height,
            width: width,
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Form(
                        key: _key,
                        child: Padding(
                            padding: const EdgeInsets.only(right: 5.0, left: 5),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextFormField(
                                    controller: emailClt,
                                    validator: login.validateEmail,
                                    decoration: const InputDecoration(
                                      hintText: 'Enter Email',
                                      prefixIcon: Icon(Icons.email_outlined),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height / 100,
                                  ),
                                  TextFormField(
                                    obscureText: login.visibal,
                                    controller: passClt,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Plesse Enter Password';
                                      } else if (value.toString().length < 5) {
                                        return 'password lenth minimum 6 digit';
                                      } else {
                                        return null;
                                      }
                                    },
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                          onPressed: () {
                                            login.isVisibal();
                                          },
                                          icon: login.visibal
                                              ? const Icon(
                                                  Icons.remove_red_eye_outlined)
                                              : const Icon(
                                                  Icons.remove_red_eye)),
                                      hintText: 'Enter Password',
                                      prefixIcon:
                                          const Icon(Icons.lock_outlined),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height / 40,
                                  ),
                                 
                                ]))), 
                                 InkWell(
                                    child: Container(
                                      height: height / 18,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade700,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      alignment: Alignment.center,
                                      child: login.isLogin
                                          ? const Text(
                                              'Login',
                                              style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.white,
                                              ),
                                            )
                                          : const CircularProgressIndicator(
                                              color: Colors.white),
                                    ),
                                    onTap: () {
                                      if (_key.currentState!.validate()) {
                                        login.usserLogin(
                                            emailClt.text.toString().trim(),
                                            passClt.text.toString().trim());
                                      }
                                    },
                                  ),
                                  SizedBox(
                                    height: height / 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Don't an account ?",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            Get.to(() => const SignupPage());
                                          },
                                          child: Text("Sign_up",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.blue.shade700,
                                              )))
                                    ],
                                  ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: InkWell(
                        child: Container(
                            alignment: Alignment.center,
                            height: height / 20,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.blue.shade700),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              'Sign up with phone number',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue.shade700,
                              ),
                            )),
                        onTap: () {
                          Get.to(() => const PhoneNumberVarified());
                        },
                      ),
                    ),
                  ]),
            ),
          );
        }));
  }
}
