import 'package:class12/const/allText.dart';
import 'package:class12/const/getStorage/getStorage.dart';
import 'package:class12/pages/signUpPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AllText.text('Home Page', Colors.black, 25, FontWeight.bold),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                StorageController.deleteLoginData();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) => const SignUpPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
              ),
              child: const Text('Log Out'),
            )
          ],
        ),
      )),
    );
  }
}
