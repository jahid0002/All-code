import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final nameClt = TextEditingController();
  final emailClt = TextEditingController();
  final passClt = TextEditingController();
  bool scureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        centerTitle: true,
        backgroundColor: const Color(0xff8ddad5),
        title: const Text(
          'Authentication',
          style: TextStyle(
              fontSize: 27, fontWeight: FontWeight.w800, color: Colors.black),
        ),
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xffa8edea), Color(0xfffed6e3)])),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              const CircleAvatar(
                backgroundColor: Color(0xff8ddad5),
                radius: 60,
                child: Icon(
                  Icons.person,
                  size: 80,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Form(
                  key: _key,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15.0, left: 15),
                    child: Column(
                      children: [
                        Card(
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            height: 45,
                            child: TextFormField(
                              controller: nameClt,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Empty Field';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                  hintText: 'Enter Name',
                                  contentPadding:
                                      EdgeInsets.only(left: 10, bottom: 5),
                                  border: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color: Color(0xff8ddad5)),
                                  )),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Card(
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            height: 45,
                            child: TextFormField(
                              controller: emailClt,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Empty Field';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                  hintText: 'Enter Email',
                                  contentPadding:
                                      EdgeInsets.only(left: 10, bottom: 5),
                                  border: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color: Color(0xff8ddad5)),
                                  )),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Card(
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            height: 45,
                            child: TextFormField(
                              controller: passClt,
                              obscureText: scureText,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Empty Field';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          scureText = !scureText;
                                        });
                                      },
                                      icon: scureText
                                          ? const Icon(
                                              Icons.remove_red_eye_outlined)
                                          : const Icon(
                                              Icons.remove_red_eye,
                                            )),
                                  hintText: 'Enter Password',
                                  contentPadding: const EdgeInsets.only(
                                      left: 10, bottom: 3, top: 8),
                                  border: InputBorder.none,
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color: Color(0xff8ddad5)),
                                  )),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        InkWell(
                          onTap: () {
                            if (_key.currentState!.validate()) {
                              _key.currentState!.save();
                            }
                          },
                          child: Card(
                            color: const Color(0xff8ddad5),
                            child: Container(
                              alignment: Alignment.center,
                              height: MediaQuery.sizeOf(context).height / 19,
                              decoration: BoxDecoration( 
                                color: const Color(0xff8ddad5),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
