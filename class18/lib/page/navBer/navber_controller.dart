import 'package:get/get.dart';

class NavberController extends GetxController {
  int _currIndex = 0;
  int get index => _currIndex;

  void getIndex(int value) {
    _currIndex = value;
    update();
  }
}
