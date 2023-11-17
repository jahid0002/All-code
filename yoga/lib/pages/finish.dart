import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yoga/dataClass/yogaProvider.dart';
import 'package:yoga/widget/widget.dart';

class FinishPage extends StatelessWidget {
  const FinishPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => YogaData(context)),
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
              child: Column(children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 12,
            ),
            text('CONGRATUATION', 25, FontWeight.w900, Colors.black),
            Image.network(
              'https://media.istockphoto.com/id/1500243537/photo/golden-trophy-cup-isolated-on-white-background-sport-tournament-award-gold-winner-cup-and.jpg?s=1024x1024&w=is&k=20&c=_OzxUktApHPbR3mOjiPCweKxhsODXUnReTHl4Kq5GXU=',
              fit: BoxFit.fill,
              height: 300,
              width: double.infinity,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    text('125', 22, FontWeight.w600, Colors.black),
                    text('KCal', 22, FontWeight.w600, Colors.black),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 4,
                ),
                Column(
                  children: [
                    text('12', 22, FontWeight.w600, Colors.black),
                    text('Minutes', 22, FontWeight.w600, Colors.black),
                  ],
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              color: Colors.black,
              endIndent: 20,
              indent: 20,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 110,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0, left: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Consumer<YogaData>(builder: (context, value, child) {
                    return TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          value.Start(context);
                        },
                        child: text(
                            'Do It Again', 22, FontWeight.w600, Colors.black));
                  }),
                  TextButton(
                      onPressed: () {},
                      child: text('Share', 22, FontWeight.w600, Colors.black)),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height / 50),
            
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.sizeOf(context).height / 19,
                width: MediaQuery.sizeOf(context).width / 2,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: text('Rate Your App', 20, FontWeight.w700, Colors.white),
              ),
            ),  
            SizedBox(height: MediaQuery.sizeOf(context).height/30),
            Container(height: MediaQuery.sizeOf(context).height/4, 
            width: MediaQuery.sizeOf(context).width, 
            color: Colors.black12,
            )
          ]))),
    );
  }
}
