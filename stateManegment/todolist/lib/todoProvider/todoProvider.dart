

import 'package:flutter/material.dart';
import 'package:todolist/class/Todomodel.dart';

class ToDoProvider extends ChangeNotifier {
  final List<ToDoModel> _list = [];

  List<ToDoModel> get todolist => _list;

  void addTodoList(ToDoModel val) {
    _list.add(val);
    notifyListeners();
  }

  void changedStatas(ToDoModel val) {
    final index = _list.indexOf(val);
    _list[index].togol();

    notifyListeners();
  }

  void removeElementList(ToDoModel val) {
    final index = _list.indexOf(val);
    _list.removeAt(index);
    notifyListeners();
  }

  DateTime _time = DateTime.now();
  DateTime get time => _time;
  void dateTime() {
    _time = DateTime.now();
   notifyListeners();
  }

}
