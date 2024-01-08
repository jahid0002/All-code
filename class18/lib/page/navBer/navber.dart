import 'package:class18/page/home/home_page.dart';
import 'package:class18/page/navBer/navber_controller.dart';
import 'package:class18/page/text_form_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavber extends StatelessWidget {
  BottomNavber({super.key});
  final controller = Get.put(NavberController());
  final List<Widget> page = [ HomePage(), const TextFormPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(   
     body: GetBuilder<NavberController>(  
      builder: (get){
        return page[controller.index];
      },
     ),




      bottomNavigationBar: GetBuilder<NavberController>(builder: (get) {
        return BottomNavigationBar(
          currentIndex: controller.index,
          onTap: (value) {
            controller.getIndex(value);
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.get_app), label: 'get'),
            BottomNavigationBarItem(icon: Icon(Icons.post_add), label: 'Post'), 
            
          ],
        );
      }),
    );
  }
}
