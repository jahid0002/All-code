import 'package:chatapps/const/new_chat/new_chat_page.dart';
import 'package:chatapps/const/new_chat/notification_controller.dart';
import 'package:chatapps/page/bottom_nav_page.dart/bottom_nav_controller.dart';
import 'package:chatapps/page/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavBer extends StatefulWidget {
  const BottomNavBer({super.key});

  @override
  State<BottomNavBer> createState() => _BottomNavBerState();
}

class _BottomNavBerState extends State<BottomNavBer> {
  NotificationController notification = NotificationController();
  final navBerController = Get.put(BottomNavController());
  @override
  void initState() {
    super.initState();

    navBerController.getUpdateToken();
    notification.getPermission();
    notification.showNotification();
  }

  final controller = PersistentTabController(initialIndex: 0);
  List<Widget> screens = [NewChatPage(), const ProfilePage()];
  List<PersistentBottomNavBarItem> items = [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.message),
      title: 'Chat',
      activeColorPrimary: Colors.black,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.person),
      title: 'Profile',
      activeColorPrimary: Colors.black,
      inactiveColorPrimary: Colors.grey,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: screens,
      items: items,
      controller: controller,
    );
  }
}
