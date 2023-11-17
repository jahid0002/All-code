import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.purple),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var textEmail = TextEditingController();
  var textPass = TextEditingController();

  void emailPass() {
    String uEmail = textEmail.text;
    String uPass = textPass.text;

    for (int i = 0; i < uEmail.length; i++) {
      if (uEmail != null && uEmail[i] == '@' && uPass.length >= 8) {
        print('Email Id: $uEmail, Password: $uPass');
        return;
      }
    }

    print('Wrong email');

    return;
  }

  bool _eye = true;

  void isShow() {
    bool eye = false;
    if (_eye == false) {
      eye = true;
    }
    setState(() {
      _eye = eye;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Authtication',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        // height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                // width: MediaQuery.sizeOf(context).width,
                child: TextField(
                  controller: textEmail,
                  decoration: InputDecoration(
                      labelText: ('Enter email'),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.purple,
                            width: 2,
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 2, color: Colors.deepOrange))),
                ),
              ),
              Container(
                height: 8,
              ),
              Container(
                height: 50,
                // width: MediaQuery.sizeOf(context).width,
                child: TextField(
                  controller: textPass,
                  obscureText: _eye == null || _eye == true ? true : false,
                  decoration: InputDecoration(
                      labelText: ('Enter password'),
                      suffixIcon: IconButton(
                        onPressed: () {
                          isShow();
                        },
                        icon: Icon(
                          Icons.remove_red_eye,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              width: 2,
                              color: const Color.fromARGB(255, 20, 14, 13)))),
                ),
              ),
              Container(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  emailPass();
                },
                onLongPress: () {
                  isShow();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20)),
                  child: ElevatedButton(
                      onPressed: () {
                        emailPass();
                      },
                      
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
            Home1()
            ],
          ),
        ),
      ),
    );
  }
}

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
