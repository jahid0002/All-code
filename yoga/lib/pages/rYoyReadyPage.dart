import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yoga/dataClass/yogaProvider.dart';
import 'package:yoga/widget/widget.dart';

class ReadyPage extends StatelessWidget {
  const ReadyPage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return ChangeNotifierProvider(
      create: (context) => YogaProvider(context),
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.info_outline, color: Colors.black)),
                )
              ]),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               const SizedBox(
                height: 250,
               /// height: MediaQuery.sizeOf(context).height/2-100,
              ),
              text('Are You Ready?', 40, FontWeight.w600, Colors.black),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 3, color: Colors.black),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(4, 4),
                          spreadRadius: 1,
                          blurRadius: 15,
                          color: Colors.blueGrey),
                      BoxShadow(
                          offset: Offset(-4, -4),
                          spreadRadius: 1,
                          blurRadius: 15,
                          color: Colors.white),
                    ],
                  ),
                  child: Consumer<YogaProvider>(
                    builder: ((context, value, child) {
                      return text(
                        '${value.count}',
                        40,
                        FontWeight.bold,
                        Colors.black,
                      );
                    }),
                  ),
                ),
              ),
              const Spacer(),
              const Divider(thickness: 2,),
             Align(alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, bottom: 8, ),
                child: text('Next: Anulom vilom ', 20, FontWeight.w500, Colors.black),
              ),
              ),
            ],
          )),
    );
  }
}
