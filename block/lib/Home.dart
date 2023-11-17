import 'package:block/Block/internetBlock.dart';
import 'package:block/Block/internet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w600, color: Colors.cyan),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: Colors.cyan,
        child: Center(child: BlocBuilder<InternetBloc, InternetState>(
          builder: (context, state) {
            if (state is InternetBackState) {
              return  Text(
                'Connected',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              );
            } else if (state is InternetLostState) {
              return  Text('Not Connected',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              );
            } else {
              return  Text('Loding...',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              );
            }
          },
        )),
      ),
    );
  }
}
