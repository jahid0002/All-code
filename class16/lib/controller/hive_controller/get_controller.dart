import 'package:class16/note_model/note_model.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class NoteControllers extends GetxController {
  var box = Hive.box<NoteModel>('note');

  Future<void> addNote(NoteModel note) async {
    box.add(note);
  }

  Future<void> updateNote(int index, NoteModel note) async {
    box.put(index, note);
  }

  Future<void> deleteNote(int index) async {
    box.delete(index);
  }
}
