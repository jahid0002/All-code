import 'package:get/get.dart';
import 'package:practice_get/models/NoteModel.dart';
import 'package:practice_get/pages/search_page.dart';

class NoteControllers extends GetxController {
  List<NoteModel> noteList = [];

  addNote(NoteModel note) {
    noteList.add(note);
    update();
  }

  deleteNote(NoteModel note) {
    int index = noteList.indexOf(note);
    noteList.removeAt(index);
    update();
  }

  updateNote(NoteModel newNote, note) {
    int index = noteList.indexOf(note);
    noteList[index].name = newNote.name;
    noteList[index].id = newNote.id;
    noteList[index].discription = newNote.discription;
    update();
  }

  NoteModel? _searchNote;
  NoteModel? get searchNote => _searchNote;
  searchingNote(String id) {
    for (int i = 0; i < noteList.length; i++) {
      if (int.parse(noteList[i].id) == int.parse(id)) {
        _searchNote = noteList[i];
        Get.to(SearchPage(note: noteList[i]));
        update();
      } else {
        SearchPage();
      }
    }

    update();
  }
}
 