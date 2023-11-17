import 'package:flutter/material.dart';
import 'package:practice_hive2/controller%20&%20model/noteModel.dart';
import 'package:practice_hive2/controller%20&%20model/provider.dart';

Widget iconBotton(NoteModel value,) {
  return IconButton(
      onPressed: () {
        final note = NoteProvider();

        note.deleteNote(value);
      },
      icon: const Icon(Icons.delete, size: 22,));
}
