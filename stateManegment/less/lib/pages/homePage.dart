// ignore: file_names
import 'package:flutter/material.dart';
import 'package:less/provider_page/textFieldProvider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextProvider text = Provider.of<TextProvider>(context, listen: false);
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'StateLessWidget',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w300, color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Consumer<TextProvider>(
              builder: (context, value, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    text.cheak == false
                        ? Text(
                            // ignore: unnecessary_string_interpolations
                            '${value.errorMassege}',
                            style: TextStyle(color: Colors.red.shade700),
                          )
                        : Container(),
                    SizedBox(
                        height: 40,
                        child: Consumer<TextProvider>(
                          builder: (context, value, child) {
                            return TextField(
                                onChanged: (val) {
                                  value.cheakEmail(val);
                                },
                                autocorrect: true,
                                controller: email,
                                decoration: const InputDecoration(
                                  hintText: 'Email',
                                ));
                          },
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                        height: 40,
                        child: Consumer<TextProvider>(
                          builder: (context, value, child) {
                            return TextField(
                                onChanged: (val) {
                                  value.cheakPass(val);
                                },
                                autocorrect: true,
                                controller: pass,
                                obscureText: value.flag,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  // label: Text('Password', style: TextStyle(color: Colors.purple.shade300),),
                                  suffixIcon: IconButton(
                                      onPressed: () => value.setVisibity(),
                                      icon: value.flag == false
                                          ? const Icon(
                                              Icons.remove_red_eye,
                                              color: Colors.purple,
                                              size: 18,
                                            )
                                          : const Icon(
                                              Icons.remove_red_eye,
                                              size: 18,
                                              color: Colors.black,
                                            )),
                                ));
                          },
                        )),
                    const SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        value.submitedInformation(
                            email.toString(), pass.toString());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1, color: Colors.black),
                        ),
                        child: value.indicator? CircularProgressIndicator() : const Text('Login',
                             style:  TextStyle(fontSize: 22,
                              fontWeight: FontWeight.bold, 
                              color: Colors.white),)
                      ),
                    ),
                  ],
                );
              },
            )),
      ),
    );
  }
}
