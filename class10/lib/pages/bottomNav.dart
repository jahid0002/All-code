import 'package:class10/const/color.dart';
import 'package:class10/controller/navBarNavigationController.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: Card( 
         color: AllColor.whiteColor,
           elevation: 20,
      child: Consumer<NavController>(
        builder: (context, provider, child) {
          return BottomNavigationBar( 
              selectedLabelStyle: TextStyle(color: AllColor.greylColor, fontWeight: FontWeight.bold),
              selectedFontSize: 20,
              unselectedFontSize: 18,
              selectedItemColor: AllColor.blueColor,
              unselectedItemColor: AllColor.greylColor,
              currentIndex: provider.currIndex, 
              onTap: (value) {
                provider.updateIndex(value);
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category), label: 'Catagory'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart), label: 'Cart'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border_outlined),
                    label: 'WishList'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle), label: 'Account'),
              ]);
        },
      ),
    ), body: Consumer<NavController>(
      builder: (context, provider, child) {
        return provider.pageList[provider.currIndex];
      },
    ));
  }
}
