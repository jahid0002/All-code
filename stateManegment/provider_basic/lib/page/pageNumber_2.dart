import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_basic/provider/shoppingProvider.dart';
import 'package:provider_basic/widget/text_widget.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomwPageState();
}

class _HomwPageState extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade200,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag,
                size: 35, color: Colors.black87)),
        centerTitle: true,
        backgroundColor: Colors.deepOrange.shade200,
        title: Column(
          children: [
            text('Shopping Card', 30, Colors.black, FontWeight.w600),
            Container(
              width: 2,
              color: Colors.black,
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 0,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 55.0, right: 60),
              child: Consumer<ShoppingProvider>(
                builder: (context, value, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text('${value.add}', 25, Colors.black, FontWeight.w900),
                      text('Total', 30, Colors.black, FontWeight.w600),
                    ],
                  );
                },
              )),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Consumer<ShoppingProvider>(builder: ((context, value, child) {
                  return InkWell(
                    onTap: () {
                      value.shoppingRemove();
                    },
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            //color: Colors.black,
                            borderRadius: BorderRadius.circular(10), 
                            border: Border.all(width: 2, color: Colors.black)
                            ),
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.remove,
                          color: Colors.black,
                          size: 25,
                        )),
                  );
                })),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child:  Padding(
                      padding: const EdgeInsets.only(right:8.0, left: 8),
                      child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            
                            text('Previas page', 25, Colors.deepOrange.shade200,
                                FontWeight.w500),
                            Icon(
                              Icons.skip_next,
                              color: Colors.deepOrange.shade200,
                              size: 20,
                            ),]),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
