import 'package:flutter/material.dart';
import 'package:practice_api2/pages/postProvider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  final emailClt = TextEditingController();
  final passClt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text(
            'Home',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height / 20,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(1)),
                child: TextFormField(
                  controller: emailClt,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      alignLabelWithHint: true,
                      focusColor: Colors.deepOrange,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            width: 2,
                            color: Colors.deepOrange,
                          )),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.deepOrange.shade200),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.deepOrange.shade400,
                          ))),
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 40,
              ),
              Container(
                height: MediaQuery.sizeOf(context).height / 20,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  controller: passClt,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      alignLabelWithHint: true,
                      focusColor: Colors.deepOrange,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            width: 2,
                            color: Colors.deepOrange,
                          )),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.deepOrange.shade200),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.deepOrange.shade400,
                          ))),
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 17,
              ),
              Consumer<PostProvider>(builder: (context, data, child) {
                return InkWell(
                  onTap: () {
                    data.postData(
                        emailClt.text.toString(), passClt.text.toString());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.sizeOf(context).height / 20,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'SingnUp',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        )));
  }
}
