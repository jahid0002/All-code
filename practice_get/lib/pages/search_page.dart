import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:practice_get/const/all_const.dart';
import 'package:practice_get/controllers/get_contrillers.dart';
import 'package:practice_get/models/NoteModel.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  NoteModel? note;
  SearchPage({super.key, this.note});

  NoteControllers noteControllers = NoteControllers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: All.text('Search Result', Colors.blue, 20, FontWeight.w700),
      ),
      body: GetBuilder<NoteControllers>(builder: (data) {
        if (note == null) {
          return Center(
            child:
                All.text('Not found your id', Colors.blue, 20, FontWeight.w700),
          );
        }
        return Padding(
          padding: const EdgeInsets.only(right: 15.0, left: 15),
          child: Card(
            elevation: 3,
            shadowColor: Colors.blue,
            child: ListTile(
              trailing: IconButton(
                icon: Icon(Icons.delete, size: 20, color: Colors.blue.shade200),
                onPressed: () {
                  noteControllers.deleteNote(note!);
                  Navigator.pop(context);
                },
              ),
              title: All.text(note!.name, Colors.black, 20, FontWeight.w700),
              leading: All.text(note!.id, Colors.black, 16, FontWeight.w700),
              subtitle: Expanded(
                  child: Text(
                note!.discription,
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis),
              )),
            ),
          ),
        );
      }),
    );
  }
}
