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
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  var oneText = TextEditingController();
  var twoText = TextEditingController();

  var result;
  var _result;

  void func() {
    oneText.clear();
    twoText.clear();
    result = null;
    _result = null;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: oneText,
              ),
            ),
            Container(
              width: 200,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: twoText,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        var _firstText = double.parse(oneText.text);
                        var _secondText = double.parse(twoText.text);


                        var sum = _firstText + _secondText;

                        result = sum;

                        setState(() {});
                      },
                      child: Text('+')),
                  ElevatedButton(
                    onPressed: () {
                      var _firstText = double.parse(oneText.text);
                      var _secondText = double.parse(twoText.text);

                    var sum = _firstText - _secondText;

                      result = sum;

                      setState(() {});
                    },
                    child: Text(
                      '-',
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        var _firstText = double.parse(oneText.text);
                        var _secondText = double.parse(twoText.text);

                        var sum = _firstText * _secondText;

                        result = sum;

                        setState(() {});
                      },
                      child: Text('*')),
                  ElevatedButton(
                      onPressed: () {
                         var _firstText = double.parse(oneText.text);
                        var _secondText = double.parse(twoText.text);

                        double sum = _firstText / _secondText;

                        _result = sum;

                        setState(() {});
                      },
                      child: Text('/')),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  func();
                },
                child: Text('Clear')),
            const SizedBox(
              height: 90,
            ),
            result != null ? Text('$result') : Container(),
            _result != null ? Text('$_result') : Container(),
          ],
        ),
      ),
    );
  }
}
