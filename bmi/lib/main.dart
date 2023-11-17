import 'package:bmi/helthy.dart';
import 'package:bmi/over_weight.dart';
import 'package:bmi/spalassScreen.dart';
import 'package:bmi/under_weight.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Spalass());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var weigth = TextEditingController();
  var fit = TextEditingController();
  var inc = TextEditingController();
  var text;
  var BMI;
  var condition;
  var clr;

  void bmi() {
    var _weigth = weigth.text;
    var _fit = fit.text;
    var _inc = inc.text;

    if (_weigth != "" && _fit != "" && _inc != "") {
      var intw = int.parse(_weigth);
      var intf = int.parse(_fit);
      var inti = int.parse(_inc);

      var totalInc = intf * 12 + inti;

      var cm = totalInc * 2.54;
      var meter = cm / 100;
      var bmi = intw / (meter * meter);
      if (bmi > 25) {
        setState(() {
          BMI = bmi;
          condition = 'You are Over Weight';
          clr = Colors.amber.shade200;
        });
      } else if (bmi < 18) {
        setState(() {
          BMI = bmi;
          condition = 'Your are under weight';
          clr = Colors.red.shade200;
        });
      } else {
        setState(() {
          BMI = bmi;
          condition = 'You are Helthy';
          clr = Colors.green;
        });
      }
    } else {
      text = 'Plase All Bloc Fill Up';
      setState(() {});
    }

    if (_weigth != "" && _fit != "" && _inc != "") {
      text = null;
    } else {
      setState(() {
        clr = null;
        BMI = null;
        condition = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        color: clr,
        child: Center(
          child: SizedBox(
            width: 300,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 200,
                    color: Colors.purple.shade100,
                    child: const Text(
                      'Body Mass Index',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 67, 53, 67),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: weigth,
                    decoration: InputDecoration(
                        focusColor: Colors.purple.shade100,
                        prefixIcon: const Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Colors.purple,
                        ),
                        label: const Text(
                          'Enter Your Weight (Kg)',
                          style: TextStyle(fontSize: 14),
                        )),
                  ),
                  TextField(
                    controller: fit,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        focusColor: Colors.purple.shade100,
                        prefixIcon: const Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Colors.purple,
                        ),
                        label: const Text(
                          'Enter Your Height (Fit)',
                          style: TextStyle(fontSize: 14),
                        )),
                  ),
                  TextField(
                    controller: inc,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        focusColor: Colors.purple.shade100,
                        prefixIcon: const Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Colors.purple,
                        ),
                        label: const Text(
                          'Enter Your Height (Inc)',
                          style: TextStyle(fontSize: 14),
                        )),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Card(
                      color: Colors.purple.shade200,
                      child: ElevatedButton(
                          onPressed: () {
                            bmi();
                          },
                          child: Text(
                            'Check BMI',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.purple.shade400,
                            ),
                          ))),
                  const SizedBox(
                    height: 15,
                  ),
                  text != null
                      ? Text(
                          '$text',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                          ),
                        )
                      : Container(),
                  const SizedBox(
                    height: 30,
                  ),
                  BMI != null
                      ? Text(
                          'Your BMI: $BMI Condition: $condition',
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        )
                      : Container(),
                  const SizedBox(
                    height: 20,
                  ),
                  BMI != null
                      ? Row(
                          children: [
                            const SizedBox(
                              width: 200,
                            ),
                            TextButton(
                                onPressed: () {
                                  page();
                                },
                                child: Text(
                                  'See More...',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.purple.shade200),
                                )),
                          ],
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void page() {
    if (BMI < 18) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Under()));
    }
    else if(BMI > 25){
       Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Over()));
    }
    else{
       Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Helthy()));
    }
  }
}
