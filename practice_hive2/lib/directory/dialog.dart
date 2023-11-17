import 'package:flutter/material.dart';
import 'package:practice_hive2/controller%20&%20model/boxes.dart';
import 'package:practice_hive2/controller%20&%20model/noteModel.dart';

class NoteDialog {
  final nameClt = TextEditingController();
  final numberClt = TextEditingController();

  Future<void> ShowDialog(context) async {
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
                onTap: () {
                  final data =
                      NoteModel(name: nameClt.text, number: numberClt.text);
                  final box = Boxes.getData();
                  box.add(data);
                  data.save();
                  print(box);
                  Navigator.pop(context);

                  nameClt.clear();
                  numberClt.clear();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal),
                  child: const Text(
                    'Submit',
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
