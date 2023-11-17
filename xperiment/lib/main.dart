// ignore_for_file: non_constant_identifier_names

import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Connectivity _connectivity = Connectivity();
  StreamSubscription? _streamSubscription;
  bool ceek = false;

  void func() {
    _connectivity.onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.mobile ||
          event == ConnectivityResult.wifi) {
        bool _ceek = true;

        if (_ceek != null) {
          setState(() {
            ceek = _ceek;
          });
        }
      } else {
        setState(() {
          ceek = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        (ceek != false) ? Text('Conneted') : Text('Not Connected'),
        FloatingActionButton(
          elevation: 20,
          onPressed: () {
            func();
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        )
      ],
    )));
  }
}

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {
  // ignore: prefer_final_fields
  var _email = TextEditingController();
  // ignore: prefer_final_fields
  var _pass = TextEditingController();
  String? Uemail;
  String? Upass;
  void emailPass() {
    Uemail = _email.text;
    Upass = _pass.text;
    if (Uemail != null && Upass != null) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Authtiaction'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: MediaQuery.sizeOf(context).width,
            child: TextField(
              controller: _email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  label: Text('Enter Email',
                      style: TextStyle(fontSize: 14, color: Colors.green)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.green),
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2, color: Colors.black))),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: MediaQuery.sizeOf(context).width,
            child: TextField(
              controller: _pass,
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              decoration: InputDecoration(
                  label: Text(
                    'Enter Password',
                    style: TextStyle(fontSize: 14, color: Colors.green),
                  ),
                  suffixIcon: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.remove_red_eye),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.green),
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2, color: Colors.black))),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              height: 45,
              width: 130,
              color: Colors.green,
              child: ElevatedButton(
                  onPressed: () {
                    emailPass();
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ))),
          const SizedBox(
            height: 100,
          ),
          Uemail?.length != 0 && Upass?.length != 0 && Uemail != null && Upass != null
              ? Text(
                  'Email: $Uemail , Password: $Upass',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green,
                  ),
                )
              : Uemail?.length == 0? Text(
                  'Wrong Email',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green,
                  ),
                ) : Upass?.length == 0? Text(
                  'Wrong Password',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green,
                  ),
                ) : Container(),
        ],
      ),
    );
  }
}
