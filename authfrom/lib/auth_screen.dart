// ignore_for_file: must_be_immutable

import 'package:authfrom/Auth_Bloc.dart';
import 'package:authfrom/Auth_Event.dart';
import 'package:authfrom/Auth_State.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Auth extends StatelessWidget {
  Auth({super.key});

  var Uemail = TextEditingController();
  var Upass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Padding(
                    padding: EdgeInsets.only(bottom: .0),
                    child: Icon(
                      Icons.arrow_back,
                      size: 0,
                    ),
                  ))
            ],
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    height: 500,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 180,
                          ),
                          BlocBuilder<SignInBloc, SignInState>(
                            builder: (context, state) {
                              if (state is SignInErrorState) {
                                return Text(
                                  state.errorMassege,
                                  style: TextStyle(color: Colors.red.shade700),
                                );
                              } else {
                                return Container();
                              }
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.center ,
                            height: 40,
                            width: MediaQuery.sizeOf(context).width,
                            child: TextField(
                              controller: Uemail,
                              onChanged: (val) {
                                BlocProvider.of<SignInBloc>(context).add(
                                    TextSignInEvent(
                                        Uemail.text, Upass.text));
                              },
                              decoration: InputDecoration(
                                  label: Text(
                                    'Enter Email',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.cyanAccent.shade100),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                          color: Colors.cyanAccent.shade700,
                                          width: 1)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.cyanAccent))),
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: MediaQuery.sizeOf(context).width,
                            child: TextField(
                              controller: Upass,
                              onChanged: (val) {
                                BlocProvider.of<SignInBloc>(context).add(
                                    TextSignInEvent(
                                        Uemail.text, Upass.text));
                              },
                              decoration: InputDecoration(
                                  label: Text(
                                    'Enter Password',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.cyanAccent.shade100),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                          color: Colors.cyanAccent.shade700,
                                          width: 1)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.cyanAccent))),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 40,
                            width: 400,
                            //color: Colors.cyanAccent.shade400,
                            child: BlocBuilder<SignInBloc, SignInState>(
                              builder: (context, state) {
                                return FloatingActionButton(
                                  backgroundColor: state is SignInValidState
                                      ? Colors.cyanAccent
                                      : Colors.blueGrey.shade100,
                                  onPressed: () {},
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
