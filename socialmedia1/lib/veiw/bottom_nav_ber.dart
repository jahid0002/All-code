import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:socialmedia1/const/app_color.dart';
import 'package:socialmedia1/veiw/add_page.dart';
import 'package:socialmedia1/veiw/category_page.dart';
import 'package:socialmedia1/veiw/home_page.dart';
import 'package:socialmedia1/veiw/message/message_page.dart';
import 'package:socialmedia1/veiw/profile_page.dart';

class BottomNavBer extends StatefulWidget {
  const BottomNavBer({super.key});

  @override
  State<BottomNavBer> createState() => _BottomNavBerState();
}

class _BottomNavBerState extends State<BottomNavBer> {
  final controller = PersistentTabController(initialIndex: 0);

  List<Widget> screens = [
    const HomePage(),
    const MessagePage(),
    const AddPage(),
    const CategoryPage(),
    const ProfilePage(),
  ];

  List<PersistentBottomNavBarItem> navItemList = [
    PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: 'Home',
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black38),
    PersistentBottomNavBarItem(
        icon: const Icon(Icons.message),
        title: 'Message',
         activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black38),
    PersistentBottomNavBarItem(
        icon: const Icon(Icons.add),
        title: 'Add',
         activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black38),
    PersistentBottomNavBarItem(
        icon: const Icon(Icons.people),
        title: 'Friend',
         activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black38),
    PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        title: 'Profile',
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black38),
  ];

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: screens,
      items: navItemList,
      screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          duration: Duration(microseconds: 400),
          curve: Curves.bounceIn),
      controller: controller,
      backgroundColor: AppColors.grayColor,
      navBarHeight: 70,
      decoration: const NavBarDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          adjustScreenBottomPaddingOnCurve: true), 
         // navBarStyle: NavBarStyle.style15, 
          
    );
  }
}
