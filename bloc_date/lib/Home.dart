import 'package:bloc_date/Bloc/Internet_Bloc.dart';
import 'package:bloc_date/Bloc/Internet_State.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: Colors.blueAccent[700]),
        ),
        backgroundColor: Colors.white,
        elevation: 10,
      ),
      body: Center(
        child: BlocBuilder<InternetBloc, InternetState>(
          builder: (context, state){

            if (state is InternetComeState) {
              return Text('Connected');
            } else if (state is InternetLostState) {
              return Text('Not Connected');
            } else {
             return Text('Loding...');
            }
          }
        ),
      ),
    );
  }
}
