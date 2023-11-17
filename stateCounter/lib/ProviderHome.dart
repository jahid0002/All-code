// ignore_for_file: sort_child_properties_last

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateCounter/count_provider.dart';
import 'package:stateCounter/opacity_Screan.dart';


class ProviderHome extends StatefulWidget {
  const ProviderHome({super.key});

  @override
  State<ProviderHome> createState() => _ProviderHomeState();
}

class _ProviderHomeState extends State<ProviderHome> {
  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 1), (timer) {
      final countprovider = Provider.of<CountProvider>(context, listen: false);

      countprovider.Increment();
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final countprovider = Provider.of<CountProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Provider',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.purple.shade200,
      ),
      body: Center(
          child: Consumer<CountProvider>(builder: (context, value, child) {
        return Text(
          // ignore: unnecessary_string_interpolations
          '${value.count}',
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        );
      })),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade400,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const OpacityProvider();
          }));
        },
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
        highlightElevation: 20,
      ),
    );
  }
}
