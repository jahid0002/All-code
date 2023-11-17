import 'package:flutter/material.dart';
import 'package:practice_hive2/controller%20&%20model/noteModel.dart';

class NoteProvider extends ChangeNotifier {
  Future<void> deleteNote(NoteModel value) async {
    value.delete();
  }

  Future<void> editNote(
      NoteModel note, context, String name, String number) async {
    var nameClt = TextEditingController();
    var numberClt = TextEditingController();

    nameClt.text = name;
    numberClt.text = number;

    return showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: const Text(
              'Add Note',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.teal,
              ),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    controller: nameClt,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      hintText: 'Enter Name',
                      focusColor: Colors.teal,
                      prefixIcon: Icon(
                        Icons.edit,
                        size: 20,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: numberClt,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Enter Number',
                      focusColor: Colors.teal,
                      prefixIcon: Icon(
                        Icons.edit,
                        size: 20,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  note.name = nameClt.text;
                  note.number = numberClt.text;

                  note.save();
                  Navigator.pop(context); 
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal),
                  child: const Text(
                    'Edit',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          );
        }));
  }
}
