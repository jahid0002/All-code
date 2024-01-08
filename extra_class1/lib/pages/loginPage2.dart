import 'package:extra_class1/const/allText.dart';
import 'package:extra_class1/pages/firstPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:msh_checkbox/msh_checkbox.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(right: 20.0, left: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Card(
                      elevation: 10,
                      shadowColor: Colors.black38,
                      child: Image.asset(
                        'assets/images/door.jpg',
                        height: 250,
                        width: size.width,
                        fit: BoxFit.cover,
                      )),
                ],
              ),
              const SizedBox(height: 20),
              Card(
                shadowColor: Colors.black,
                elevation: 10,
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 30.0, right: 20, left: 20, top: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AllText.text(
                              'Loging', Colors.black, 24, FontWeight.w800),
                          const SizedBox(height: 30),
                          AllText.text(
                              'Username', Colors.black, 18, FontWeight.w600),
                          //const SizedBox(height: 5),
                          TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                focusColor: Colors.purple.shade600,
                                hintText: 'Enter username'),
                          ),
                          Container(height: 2, color: Colors.black87),
                          const SizedBox(height: 15),

                          AllText.text(
                              'PassWord', Colors.black, 18, FontWeight.w600),
                          //const SizedBox(height: 5),
                          TextFormField(
                            decoration: InputDecoration(
                                suffixIcon:
                                    const Icon(Icons.remove_red_eye_rounded),
                                border: InputBorder.none,
                                focusColor: Colors.purple.shade600,
                                hintText: 'Enter password'),
                          ),
                          Container(height: 2, color: Colors.black87),
                        ]),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Row(
                      children: [
                        MSHCheckbox(
                          // ignore: deprecated_member_use
                          uncheckedColor: Colors.blue,
                          size: 22,
                          value: false,
                          onChanged: (selected) {},
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        AllText.text(
                            'Remember me', Colors.black, 16, FontWeight.w600),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => const FirstPage()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 200,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: AllText.text(
                          'SIGNIN', Colors.white, 25, FontWeight.w800),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 50, height: 1, color: Colors.black),
                  const SizedBox(width: 20),
                  AllText.text(
                      'Social Login', Colors.black, 18, FontWeight.w500),
                  const SizedBox(width: 20),
                  Container(width: 50, height: 1, color: Colors.black),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.blue.shade900,
                    child: const FaIcon(
                      FontAwesomeIcons.facebook,
                      size: 60,
                    ),
                  ),
                  const SizedBox(width: 20),
                  CircleAvatar(
                    backgroundColor: Colors.deepOrange.shade800,
                    radius: 35,
                    child: const FaIcon(
                      FontAwesomeIcons.google,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              AllText.text(
                  'Create an account', Colors.black, 18, FontWeight.w700)
            ],
          ),
        ),
      )),
    );
  }
}
