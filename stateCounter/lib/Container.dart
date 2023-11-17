import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateCounter/provider/Container_Provider.dart';

class ClsContainer extends StatefulWidget {
  const ClsContainer({super.key});

  @override
  State<ClsContainer> createState() => _ContainerState();
}

class _ContainerState extends State<ClsContainer> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ContainerProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade200,
        title: const Text(
          'Animation',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ContainerProvider>(builder: (context, data, child) {
              return AnimatedContainer(
                duration: const Duration(
                  seconds: 3,
                ),
                height: data.height,
                width: data.width,
                decoration: BoxDecoration(color: data.col),
              );
            }),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  provider.set();
                },
                child: const Text('Click'))
          ],
        ),
      ),
    );
  }
}
