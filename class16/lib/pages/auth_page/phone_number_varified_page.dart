import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneNumberVarified extends StatefulWidget {
  const PhoneNumberVarified({super.key});

  @override
  State<PhoneNumberVarified> createState() => _PhoneNumberVarifiedState();
}

class _PhoneNumberVarifiedState extends State<PhoneNumberVarified> {
  final formKey = GlobalKey<FormState>();
  final numberClt = TextEditingController();
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: const Text(
          'Phone Number Login',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 18,
            color: Colors.white,
          ),
          onPressed: () => Get.back(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: height / 10,
            ),
            Form(
                key: formKey,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: numberClt,
                  decoration: const InputDecoration(
                      hintText: 'Enter your number with country code',
                      prefixIcon: Icon(Icons.phone_android_outlined)),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'enter your phone number';
                    } else if (value.toString().length < 12) {
                      return '13 digit hare';
                    } else {
                      return null;
                    }
                  },
                )),
            SizedBox(
              height: height / 15,
            ),
            InkWell(
                child: Container(
                    alignment: Alignment.center,
                    height: height / 18,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade700,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text(
                      'Varification',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    )),
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    await auth.verifyPhoneNumber(
                      phoneNumber: numberClt.text.toString().trim(),
                      verificationCompleted: (_){

                      },
                     verificationFailed: (e){}, 
                     codeSent: (String varificationId, int? token){},
                      codeAutoRetrievalTimeout: (e){

                      }
                      );
                  }
                })
          ],
        ),
      ),
    );
  } 
}
