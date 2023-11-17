import 'package:class10/const/color.dart';
import 'package:class10/const/text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColor.bgColor,
      appBar: AppBar(
        toolbarHeight: 90,
        title: AllText.text(
            'Account', 24, FontWeight.bold, AllColor.textTitleColor),
        centerTitle: true,
        leading:
            AllText.icon(Icons.arrow_back_ios, 18, AllColor.textTitleColor),
        elevation: 0,
        backgroundColor: AllColor.bgColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 15.0, left: 15, ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(
                        20,
                      ),
                      topLeft: Radius.circular(20))),
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey,
                ),
                title: AllText.text(
                    'Jahid Hasan', 23, FontWeight.w700, AllColor.textTitleColor),
                subtitle: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: AllText.icon(
                          Icons.mobile_friendly, 18, AllColor.blueColor),
                    ),
                    AllText.text(
                        '01892751551', 16, FontWeight.w400, AllColor.textColor)
                  ],
                ),
                trailing: AllText.icon(
                    Icons.arrow_forward_ios, 15, AllColor.textTitleColor),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(
                        20,
                      ),
                      topLeft: Radius.circular(20))),
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AllColor.blueColor,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        topLeft: Radius.circular(15)),
                  ),
                  child: AllText.icon(Icons.wallet, 30, AllColor.whiteColor),
                ),
                title: AllText.text(
                    'Cash Wallet', 21, FontWeight.w600, AllColor.textTitleColor),
                subtitle: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: AllText.text(
                            '10,000', 16, FontWeight.w400, AllColor.textColor)),
                    AllText.text('AED', 18, FontWeight.w400, AllColor.blueColor)
                  ],
                ),
                trailing: AllText.icon(
                    Icons.arrow_forward_ios, 15, AllColor.textTitleColor),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card( 
               shape:  const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(
                        20,), topLeft: Radius.circular(20))),
                      
              child: Column(
                children: [
                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AllColor.greylColor,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                      ),
                      child: AllText.icon(
                          Icons.shopping_cart, 30, AllColor.whiteColor),
                    ),
                    title: AllText.text('Shope Oders', 21, FontWeight.w600,
                        AllColor.textTitleColor),
                    subtitle: AllText.text(
                        'Ashope', 16, FontWeight.w400, AllColor.textColor),
                    trailing: AllText.icon(
                        Icons.arrow_forward_ios, 15, AllColor.textTitleColor),
                  ), 
                  const Divider(),
                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AllColor.pinkColor,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                      ),
                      child: AllText.icon(
                          Icons.location_pin, 30, AllColor.whiteColor),
                    ),
                    title: AllText.text('My Location', 21, FontWeight.w600,
                        AllColor.textTitleColor),
                    subtitle: AllText.text(
                        'Dhaka', 16, FontWeight.w400, AllColor.textColor),
                    trailing: AllText.icon(
                        Icons.arrow_forward_ios, 15, AllColor.textTitleColor),
                  ), 
                  const Divider(),
                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AllColor.blueColor,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                      ),
                      child: AllText.icon(
                          Icons.punch_clock, 30, AllColor.whiteColor),
                    ),
                    title: AllText.text('Oder Histroy', 21, FontWeight.w600,
                        AllColor.textTitleColor),
                    subtitle: AllText.text(
                        'Oders that you made before', 16, FontWeight.w400, AllColor.textColor),
                    trailing: AllText.icon(
                        Icons.arrow_forward_ios, 15, AllColor.textTitleColor),
                  ),
                  const Divider(), 
                  
                   ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AllColor.purpallColor,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                      ),
                      child: AllText.icon(
                          Icons.info, 30, AllColor.whiteColor),
                    ),
                    title: AllText.text('About Us', 21, FontWeight.w600,
                        AllColor.textTitleColor),
                    subtitle: AllText.text('Terms of use', 16,
                        FontWeight.w400, AllColor.textColor),
                    trailing: AllText.icon(
                        Icons.arrow_forward_ios, 15, AllColor.textTitleColor),
                  ), 
                  
                  const Divider(),
                   ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AllColor.greylColor,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                      ),
                      child: AllText.icon(Icons.language, 30, AllColor.whiteColor),
                    ),
                    title: AllText.text(
                        'Language', 21, FontWeight.w600, AllColor.textTitleColor),
                    subtitle: AllText.text(
                        'English', 16, FontWeight.w400, AllColor.textColor),
                    trailing: AllText.icon(
                        Icons.arrow_forward_ios, 15, AllColor.textTitleColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
