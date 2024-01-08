import 'package:chatapps/page/login/loging_page.dart';
import 'package:chatapps/page/signup/sign_controller.dart';
import 'package:chatapps/widget/arrow_icon.dart';
import 'package:chatapps/widget/round_button.dart';
import 'package:chatapps/widget/text_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final controller = Get.put(SignupController());

  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  final emailNode = FocusNode();
  final passNode = FocusNode();
  final userNode = FocusNode();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    userNameController.dispose();
    emailController.dispose();
    passController.dispose();
    userNode.dispose();
    emailNode.dispose();
    passNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        elevation: 0,
        leading: ArrowBackIcon(onPressed: () {
          Get.back();
        }, color: Colors.black,),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Text(
                'Welcome to app',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'Enter your email address',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                'to register to your account',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: height * 0.07,
              ),
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: GetBuilder<SignupController>(builder: (get) {
                    return Column(
                      children: [
                        TextForm(
                          controller: userNameController,
                          focusNode: userNode,
                          onChanged: (value) {},
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter your name';
                            }
                            return null;
                          },
                          hint: "Username",
                          keybordType: TextInputType.name,
                        ),
                        TextForm(
                          controller: emailController,
                          focusNode: emailNode,
                          onChanged: (value) {},
                          validator: controller.validateEmail,
                          hint: "Email",
                          keybordType: TextInputType.emailAddress,
                        ),
                        TextForm(
                          suffexIcon: true,
                          icon: controller.isShow
                              ? Icons.remove_red_eye
                              : Icons.remove_red_eye_outlined,
                          iconOnTap: () {
                            controller.showPassword();
                          },
                          controller: passController,
                          focusNode: passNode,
                          onChanged: (value) {},
                          validator: controller.validatePassword,
                          hint: "Password",
                          obsecureText: controller.isShow,
                          keybordType: TextInputType.visiblePassword,
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        RoundButton(
                          name: 'Sign Up',
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              controller.signUp(
                                userNameController.text.toString().trim(),
                                emailController.text.toString().trim(),
                                passController.text.toString().trim(),
                              );
                            }
                          },
                          radias: 25,
                          loading: controller.loading,
                        ),
                      ],
                    );
                  }),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              InkWell(
                onTap: () => Get.to(() => const LoginPage()),
                child: Text.rich(TextSpan(
                    text: "Already have an account ",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                          text: 'Login',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  decoration: TextDecoration.underline,
                                  fontSize: 18))
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
