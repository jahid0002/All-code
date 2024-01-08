import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialmedia1/controllers/forgot_password_controller.dart';
import 'package:socialmedia1/veiw/loginPage.dart';
import 'package:socialmedia1/widget/back_icon.dart';
import 'package:socialmedia1/widget/round_button.dart';
import 'package:socialmedia1/widget/text_form.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final controller = Get.put(ForgotPasswordController());

  final emailController = TextEditingController();

  final emailNode = FocusNode();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();

    emailController.dispose();

    emailNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: ArrowBackIcon(
          onPressed: () {
            Get.offAll(()=>const LoginPage());
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Text(
                'Forgot Password',
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
                'to recover your password',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                height: height * 0.07,
              ),
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: GetBuilder<ForgotPasswordController>(builder: (get) {
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
                        SizedBox(
                          height: height * 0.05,
                        ),
                        RoundButton(
                          name: 'Recover',
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              controller.forgotPasswordAuth(
                                emailController.text.toString().trim(),
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
            ],
          ),
        ),
      ),
    );
  }
}
