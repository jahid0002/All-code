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
      theme: ThemeData(
        colorSchemeSeed: Colors.purple,
        scaffoldBackgroundColor: Colors.white,
      ),
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
  bool _eye = true;

  func() {
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
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'LOG',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.purple,
                  ),
                ),
                Text(
                  'iN',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            Container(
              height: 60,
            ),
            Container(
              height: 45,
              width: MediaQuery.sizeOf(context).width,
              child: TextField(
                  controller: textEmail,
                  decoration: InputDecoration(
                      labelText: 'Enter Email',
                      disabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blueAccent, width: 2)),
                      focusColor: Colors.blue,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2,
                          )))),
            ),
            Container(
              height: 12,
            ),
            Container(
              height: 45,
              width: MediaQuery.sizeOf(context).width,
              child: TextField(
                  controller: textPass,
                  obscureText: _eye == null || _eye == true ? true : false,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: () {
                          func();
                        },
                      ),
                      label: Text('Enter Password'),
                      disabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blueAccent, width: 2)),
                      focusColor: Colors.blue,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2,
                          )))),
            ),
            Container(
              height: 30,
            ),
            Card(
              elevation: 50,
              shadowColor: Colors.white,
              child: Container(
                height: 50,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(9)),
                child: ElevatedButton(
                    onPressed: () {
                      String uEmail = textEmail.text;
                      String uPass = textPass.text;

                      print('Email: $uEmail, Password: $uPass');
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    )),
              ),
            ),
            Card(
              elevation: 4,
              shadowColor: Colors.purple,
              child: TextButton(
                  onPressed: () {
                    print('new account page make koro');
                  },
                  child: Text(
                    'Create new account',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.purple,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
