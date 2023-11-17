import 'package:extra_class1/const/allText.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
       
        child: Padding(
          padding: const EdgeInsets.only(right:20.0, left: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 40),
                AllText.text('Login', Colors.black, 35, FontWeight.w900),
                const SizedBox(height: 0),
                AllText.text(
                    'Login to your account', Colors.black, 18, FontWeight.w500),
                SizedBox(
                  child: Form(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40),
                      AllText.text('Email', Colors.black, 18, FontWeight.w500),
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
                      const SizedBox(height: 20),
                      AllText.text('Password', Colors.black, 18, FontWeight.w500),
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
                        height: 60,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 70,
                        width: size.width,
                        decoration: BoxDecoration(
                          color: Colors.teal.shade900,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: AllText.text(
                            'Login ', Colors.white, 30, FontWeight.w800),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AllText.text('Don have an account', Colors.black, 18,
                              FontWeight.w300),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: AllText.text('?SignUP', Colors.teal.shade900, 23,
                                FontWeight.w900),
                          ),
                        ],
                      ),
                     
                    ],
                  )),
                ), 
                 SizedBox( 
                  width: size.width,
                     child: Image.asset('assets/images/login2.png',
                         fit: BoxFit.cover)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
