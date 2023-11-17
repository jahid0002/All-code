import 'dart:io';

class NoteModel {
  String title;
  String discription;
  File? imageUrl;
  bool cheak;

  NoteModel({
    required this.title,
    required this.discription,
    this.imageUrl,
    this.cheak = false,
  });

  toggol() {
    cheak = !cheak;
  }
}
