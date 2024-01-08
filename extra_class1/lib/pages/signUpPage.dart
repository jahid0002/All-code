import 'package:extra_class1/const/allText.dart';
import 'package:extra_class1/pages/loginPage.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
            child: Form(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  AllText.text('Sign Up', Colors.teal.shade900, 35, FontWeight.w900),
                  const SizedBox(
                    height: 5,
                  ),
                  AllText.text('Create an account its free', Colors.black, 18,
                      FontWeight.w500),
                  const SizedBox(
                    height: 45,
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AllText.text(
                            'Username', Colors.black, 18, FontWeight.w500),
                        Container(
                          height: size.height / 18,
                          width: size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 2, color: Colors.black26),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: Colors.teal.shade900)),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        AllText.text(
                            'Email', Colors.black, 18, FontWeight.w500),
                        Container(
                          height: size.height / 18,
                          width: size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 2, color: Colors.black26),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: Colors.teal.shade900)),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        AllText.text(
                            'Password', Colors.black, 18, FontWeight.w500),
                        Container(
                          height: size.height / 18,
                          width: size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 2, color: Colors.black26),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: Colors.teal.shade900)),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        AllText.text('Confirm Password', Colors.black, 18,
                            FontWeight.w500),
                        Container(
                          height: size.height / 18,
                          width: size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 2, color: Colors.black26),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: Colors.teal.shade900)),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 60,
                          width: size.width,
                          decoration: BoxDecoration(
                            color: Colors.teal.shade900,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: AllText.text(
                              'Sign Up ', Colors.white, 25, FontWeight.w800),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom:10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AllText.text('Already have an a account',
                                  Colors.black, 18, FontWeight.w400),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const LoginPage()));
                                },
                                child: AllText.text('?Login',
                                    Colors.teal.shade900, 23, FontWeight.w900),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )));
  }
}
