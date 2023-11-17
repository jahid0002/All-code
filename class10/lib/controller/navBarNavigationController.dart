import 'package:class10/pages/accountPage.dart';
import 'package:class10/pages/cartPage.dart';
import 'package:class10/pages/catagoryPage.dart';
import 'package:class10/pages/homePage.dart';
import 'package:class10/pages/wishListPage.dart';
import 'package:flutter/material.dart';

class NavController extends ChangeNotifier { 

  // Bottom Navigation List
  List<Widget> pageList = [
    const HomePage2(),
    const CatagoryPage(),
    const CartPage(),
    const WishListPage(),
    const HomePage()
  ]; 
  
  // Index 
  int _currIndex = 0;
  int get currIndex => _currIndex; 

   // Update Index Mathod
  void updateIndex(int val) {
    _currIndex = val;
    notifyListeners();
  }
}
