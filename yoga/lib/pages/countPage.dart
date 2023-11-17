import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yoga/dataClass/yogaProvider.dart';
import 'package:yoga/widget/widget.dart';

class CountPage extends StatelessWidget {
  const CountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => YogaData(context),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              child: Center(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://images.unsplash.com/photo-1447452001602-7090c7ab2db3?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YW51bG9tJTIwdmlsb20lMjB5b2dhJTIwaW1hZ2V8ZW58MHx8MHx8fDA%3D',
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: 300,
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height / 15,
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height / 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: text(
                          'Anulom Vilom', 28, FontWeight.w900, Colors.black),
                    ),
                    Consumer<YogaData>(builder: ((context, value, child) {
                      return Container(
                        alignment: Alignment.center,
                        height: MediaQuery.sizeOf(context).height / 20,
                        width: MediaQuery.sizeOf(context).width / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            text('00', 25, FontWeight.w700, Colors.white),
                            text(' : ', 25, FontWeight.w700, Colors.white),
                            text('${value.Count}', 25, FontWeight.w700,
                                Colors.white),
                          ],
                        ),
                      );
                    })),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height / 4.5,
                    ),
                    Consumer<YogaData>(builder: ((context, value, child) {
                      return InkWell(
                        onTap: () {
                          value.toggul();
                        },
                        child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.sizeOf(context).height / 22,
                            width: MediaQuery.sizeOf(context).height / 4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black),
                            child: text(
                              'Puase',
                              22,
                              FontWeight.w600,
                              Colors.white,
                            )),
                      );
                    })),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height / 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0, left: 12),
                          child: TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                ObjectDisposed(object: YogaData);
                              },
                              child: text('Previas', 22, FontWeight.w500,
                                  Colors.black)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0, left: 12),
                          child: TextButton(
                              onPressed: () {},
                              child: text(
                                  'Next', 22, FontWeight.w500, Colors.black)),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 2,
                      color: Colors.black54,
                      endIndent: 20,
                      indent: 20,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    text('Yoga : Anulom Vilom', 22, FontWeight.w500,
                        Colors.black)
                  ],
                ),
              ),
            ),
            Consumer<YogaData>(builder: (context, value, child) {
              return Visibility(
                visible: value.cheak,
                child: Container(
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.black87,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.sizeOf(context).height / 20,
                            width: MediaQuery.sizeOf(context).width / 2.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: text(
                                'Pause', 22, FontWeight.w700, Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height / 35,
                        ),
                        InkWell(
                          onTap: () {
                            value.restart();
                            value.toggul();
                            value.Start(context);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.sizeOf(context).height / 25,
                            width: MediaQuery.sizeOf(context).width / 2.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: text(
                                'Restart', 22, FontWeight.w700, Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height / 35,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.sizeOf(context).height / 25,
                            width: MediaQuery.sizeOf(context).width / 2.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child:
                                text('Quit', 22, FontWeight.w700, Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height / 35,
                        ),
                        InkWell(
                          onTap: () {
                            value.toggul();
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.sizeOf(context).height / 20,
                            width: MediaQuery.sizeOf(context).width / 2.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: text(
                                'Resume', 22, FontWeight.w700, Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
