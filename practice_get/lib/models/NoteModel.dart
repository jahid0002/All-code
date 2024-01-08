class NoteModel {
  String name;
  String id;
  String discription;
  bool isModel;

  NoteModel(
      {required this.name,
      required this.id,
      required this.discription,
      required this.isModel});

  void isModelChange() {
    isModel = !isModel;
  }
}
