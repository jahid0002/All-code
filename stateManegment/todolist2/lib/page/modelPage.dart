// ignore: file_names
class ToDoList {
  String title;
  bool isCompleted;

  ToDoList({required this.title, required this.isCompleted});

  void toggulComplted() {
    isCompleted = !isCompleted;
  }
}
