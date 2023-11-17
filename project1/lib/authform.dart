import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formkey = GlobalKey<FormState>();
  late String _email;
  late String _password;
  late String _username;
  bool isLogin = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          key: ValueKey('email'),
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.contains('@')) {
                              return 'Incorret email';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            if (value != null) {
                              _email = value;
                            }
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(8.0),
                                borderSide: new BorderSide(),
                              ),
                              labelText: "Enter Email",
                              labelStyle: GoogleFonts.roboto()),
                        ),
                      ),
                      if (!isLogin)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            key: ValueKey('username'),
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !value.contains('@')) {
                                return 'Incorret username';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              if (value != null) {
                                _username = value;
                              }
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(8.0),
                                  borderSide: new BorderSide(),
                                ),
                                labelText: "Enter User Name",
                                labelStyle: GoogleFonts.roboto()),
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          key: ValueKey('password'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Incorret password';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            if (value != null) {
                              _password = value;
                            }
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(8.0),
                                borderSide: new BorderSide(),
                              ),
                              labelText: "Enter Password",
                              labelStyle: GoogleFonts.roboto()),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          
                            padding: EdgeInsets.all(5),
                            height: 50,
                            width: double.infinity,
                            color: Colors.purple,
                            child: ElevatedButton(onPressed: null, 
                            
                            child: isLogin? Text('Login', style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white38
                            ),) : Text('SignUp', style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white38,
                            ),))
                            ),
                      )
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
