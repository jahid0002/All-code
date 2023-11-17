import 'dart:io';

import 'package:class5/controller/noteModel.dart';
import 'package:class5/pages/draftPage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:class5/pages/notePage.dart';
import 'package:flutter/material.dart';

class NoteProvider extends ChangeNotifier {
  List<Widget> list = [const NotePage(), const DraftPage()];
  int _index = 0;

  int get index => _index;

  void onChanged(int val) {
    _index = val;
    notifyListeners();
  }

  GlobalKey _key = GlobalKey<FormState>();
  
  TextEditingController _titleController = TextEditingController();
  TextEditingController _discriptionController = TextEditingController();
  File? _imageUrl;
  String _imageHint = 'Slecte image';

  GlobalKey get key => _key;
  TextEditingController get titleController => _titleController;
  TextEditingController get discription => _discriptionController;
  File? get imageUrl => _imageUrl;
  String get imageHint => _imageHint;

  //// DrafNote

  List<NoteModel> noteList = [];
// add note
  Future<void> addNote(NoteModel val) async {
    noteList.add(val);

    notifyListeners();
  }

  // delete note
  void deleteNote(NoteModel value) {
    int index = noteList.indexOf(value);
    noteList.removeAt(index);
    notifyListeners();
  }

  /// SAVE NOTE Notesave
  List<NoteModel?> noteListSave = [];

  void addNoteSave(NoteModel val) {
    noteListSave.add(val);
    notifyListeners();
  }

  // delete save note
  void deleteNoteSave(NoteModel value) {
    int index = noteListSave.indexOf(value);
    noteListSave.removeAt(index);
    notifyListeners();
  }

  // index match
  int? _currIndex;
  int? get currIndex => _currIndex;
  void indexAt(int val) {
    _currIndex = val;
    notifyListeners();
  }
  // draft index match

  int? _draftIndex;
  int? get draftIndex => _draftIndex;
  void draftIndexAt(int val) {
    _draftIndex = val;
    notifyListeners();
  }

  /// Image picker

  void imagePicker() async {
    XFile? _pickImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (_pickImage != null) {
      _imageUrl = File(_pickImage.path);
      _imageHint = _imageUrl!.path;
      notifyListeners();
    }
  }

// discription page navigation bar favarite

  List<NoteModel> favarite = [];

  addFavarite(NoteModel val) {
    if (val.cheak) {
      int idex = favarite.indexOf(val);
      favarite.removeAt(idex);
      val.toggol();
      notifyListeners();
    } else {
      favarite.add(val);
      val.toggol();
      notifyListeners();
    }
  }
  // pop up show Note discription Page

  Future<void> dialogShow(context, NoteModel val, int number) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: const Text(
              'Delete Item',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
              TextButton(
                onPressed: () {
                  int index = noteListSave.indexOf(val);
                  noteListSave.removeAt(index);
                  Navigator.pop(context);
                  notifyListeners();
                  if (val == favarite.indexOf(val)) {
                    int indexFavarite = favarite.indexOf(val);

                    favarite.removeAt(indexFavarite);
                    Navigator.pop(context);
                    notifyListeners();
                  }
                },
                child: const Text(
                  'Delete',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          );
        });
  }
}
