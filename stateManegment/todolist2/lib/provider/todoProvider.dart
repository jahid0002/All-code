// ignore: file_names
import 'package:flutter/foundation.dart';
import 'package:todolist2/page/modelPage.dart';

class TODOListProvider extends ChangeNotifier {
  final List<ToDoList> _list = [];
  List<ToDoList> get allList => _list;

  void addList(ToDoList val) {
    _list.add(val);
    notifyListeners();
  }

  void removeFromList(ToDoList val) {
    final index = _list.indexOf(val);
    _list.removeAt(index);
    notifyListeners();
  }

  void chaneStatasTodoList(ToDoList val) {
    final index = _list.indexOf(val);
    _list[index].toggulComplted();
    notifyListeners();
  }
}
