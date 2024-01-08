import 'package:class16/controller/signup_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  SignupController auth = Get.put(SignupController());
  bool show = true;
  final emailClt = TextEditingController();
  final passClt = TextEditingController();

  final _key = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    emailClt.dispose();
    passClt.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    // double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 18,
              color: Colors.white,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          centerTitle: true,
          // automaticallyImplyLeading: false,
          toolbarHeight: 70,
          backgroundColor: Colors.blue.shade700,
          title: const Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          )),
      body: GetBuilder<SignupController>(builder: (get) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 16.0, left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                    key: _key,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5.0, left: 5),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: emailClt,
                            validator: auth.validateEmail,
                            decoration: const InputDecoration(
                              hintText: 'Enter Email',
                              prefixIcon: Icon(Icons.email_outlined),
                            ),
                          ),
                          SizedBox(
                            height: height / 100,
                          ),
                          TextFormField(
                            obscureText: auth.visibal,
                            controller: passClt,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'enter password';
                              } else if (value.toString().length < 6) {
                                return 'password lenth minimum 6 digit';
                              } else {
                                return null;
                              }
                            },
                            decoration:  InputDecoration( 
                               suffixIcon: IconButton(
                                  onPressed: () {
                                    auth.isVisibal();
                                  },
                                  icon: auth.visibal
                                      ? const Icon(
                                          Icons.remove_red_eye_outlined)
                                      : const Icon(Icons.remove_red_eye)),
                              hintText: 'Enter Password',
                              prefixIcon: const Icon(Icons.lock_outlined),
                            ),
                          ),
                          SizedBox(
                            height: height / 16,
                          )
                        ],
                      ),
                    )),
                InkWell(
                  child: Container(
                    height: height / 18,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade700,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: auth.isSignup
                        ? const Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          )
                        : const CircularProgressIndicator(
                            color: Colors.white,
                          ),
                  ),
                  onTap: () {
                    if (_key.currentState!.validate()) {
                      auth.usserSignup(context, emailClt.text.toString().trim(),
                          passClt.text.toString().trim());
                    }
                  },
                ),
                SizedBox(
                  height: height / 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "All ready have an account ?",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.back();
                          // Get.to(()=>const LoginPage());
                        },
                        child: Text("Login",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue.shade700,
                            )))
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
