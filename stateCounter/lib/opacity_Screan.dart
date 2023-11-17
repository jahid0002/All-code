import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateCounter/Container.dart';
import 'package:stateCounter/provider/opacity_provider.dart';

class OpacityProvider extends StatefulWidget {
  const OpacityProvider({super.key});

  @override
  State<StatefulWidget> createState() {
    return _OpacityProvider();
  }
}

class _OpacityProvider extends State<OpacityProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade200,
        title: const Center(
            child: Text(
          'Opacity',
          style: TextStyle(
            fontSize: 22,
          ),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Oprovider>(
              builder: (context, data, child) {
                return Slider(
                  divisions: 10,
                  max: 1,
                  min: 0,
                  activeColor: Colors.purple.shade500,
                  inactiveColor: Colors.purple.shade200,
                  value: data.value,
                  onChanged: (val) {
                    data.setValue(val);
                  },
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Consumer<Oprovider>(
                  builder: (context, data, child) {
                    return Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent.withOpacity(data.value),
                      ),
                      child: const Center(
                          child: Text(
                        'Container 1',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                    );
                  },
                )),
                Expanded(child: Consumer<Oprovider>(
                  builder: (context, data, child) {
                    return Container(
                      height: 100,
                      width: 100,
                      color: Colors.green.withOpacity(data.value),
                      child: const Center(
                        child: Text(
                          'Container 1',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    );
                  },
                )),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ClsContainer()));
        },
        backgroundColor: Colors.purple.shade400,
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
