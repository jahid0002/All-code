import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kubit/Internet_kubit/Internet_kubit.dart';
import 'package:kubit/Internet_kubit/Internet_state.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InternetCubit, InternetState>(
    builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                color: Colors.white30,
               
              ),
              Container(
                height: 200,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(color: Colors.red[600],
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))),
              ),
                 Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: Container(
                                 height: 200,
                                 width: MediaQuery.sizeOf(context).width,
                                 decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                               ),
                 ),

                 Container(
                height: 200,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))),
              ),


             
            ],
          ),
        );
      },
    );
  }
}
