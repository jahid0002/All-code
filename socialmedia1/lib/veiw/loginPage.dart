import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialmedia1/controllers/login_controller.dart';
import 'package:socialmedia1/veiw/forgot_password.dart';
import 'package:socialmedia1/veiw/signup_page.dart';

import 'package:socialmedia1/widget/round_button.dart';
import 'package:socialmedia1/widget/text_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = Get.put(LoginController());

  final emailController = TextEditingController();
  final passController = TextEditingController();

  final emailNode = FocusNode();
  final passNode = FocusNode();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();

    emailController.dispose();
    passController.dispose();
    emailNode.dispose();
    passNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.10,
              ),
              Text(
                'Welcome to app',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'Enter your email address',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'to connect to your account',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                height: height * 0.07,
              ),
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: GetBuilder<LoginController>(builder: (get) {
                    return Column(
                      children: [
                        TextForm(
                          controller: emailController,
                          focusNode: emailNode,
                          onChanged: (value) {},
                          validator: controller.validateEmail,
                          hint: "Email",
                          keybordType: TextInputType.emailAddress,
                        ),
                        TextForm(
                          controller: passController,
                          focusNode: passNode,
                          onChanged: (value) {},
                          validator: controller.validatePassword,
                          hint: "Password",
                          obsecureText: controller.isShow,
                          keybordType: TextInputType.visiblePassword,
                          suffexIcon: true,
                          icon: controller.isShow
                              ? Icons.remove_red_eye
                              : Icons.remove_red_eye_outlined,
                          iconOnTap: () => controller.showPassword(),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: () {
                              Get.off(() => const ForgotPassword());
                            },
                            child: Text(
                              'Forgot Password',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        RoundButton(
                          name: 'Login',
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              controller.loginAuth(
                                  emailController.text.toString().trim(),
                                  passController.text.toString().trim());
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
                onTap: () => Get.to(() => const SignUpPage()),
                child: Text.rich(TextSpan(
                    text: "Don't have an account ",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                          text: 'Sign Up',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
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
