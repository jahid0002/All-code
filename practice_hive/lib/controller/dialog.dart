import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:practice_hive/controller/noteModel.dart';

class NoteProvider extends ChangeNotifier {
  final _idController = TextEditingController();
  final _nameController = TextEditingController();
  final _schoolNameController = TextEditingController();

  TextEditingController get idController => _idController;
  TextEditingController get nameController => _nameController;
  TextEditingController get schoolNameController => _schoolNameController;
  String? _title = 'Plasse write right information';
  bool flag = true;

  // add aliment & dialig show

  Box _box = Hive.box('note');
  Box get box => _box;

  Future<void> dialogShow(context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Add Your Information',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.teal)),
            content: SizedBox(
              height: 180,
              child: Column(
                children: [
                  TextField( 
                    keyboardType: TextInputType.number,
                    controller: _idController,
                    decoration: const InputDecoration(
                      hintText: 'Enter your Id: ',
                      prefixIcon: Icon(
                        Icons.edit,
                        size: 20,
                        color: Colors.teal,
                      ),
                      focusColor: Colors.teal, 
                      
                    ),
                  ),
                  TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      hintText: 'Enter your Name: ',
                      prefixIcon: Icon(
                        Icons.edit,
                        size: 20,
                        color: Colors.teal,
                      ),
                      focusColor: Colors.teal,
                    ),
                  ),
                  TextField(
                    controller: _schoolNameController,
                    decoration: const InputDecoration(
                      hintText: 'Enter your School Name: ',
                      prefixIcon: Icon(
                        Icons.edit,
                        size: 20,
                        color: Colors.teal,
                      ),
                      focusColor: Colors.teal,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  flag
                      ? Text(
                          '$_title',
                          style: TextStyle(
                              fontSize: 16, color: Colors.green.shade800),
                        )
                      : Text(
                          '$_title',
                          style: TextStyle(
                              fontSize: 16, color: Colors.red.shade800),
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
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  if (idController != null &&
                      nameController != null &&
                      schoolNameController != null &&
                      idController.text.length > 1 &&
                      nameController.text.length > 1 &&
                      schoolNameController.text.length > 1) {
                    _box.add(NoteModel(
                        id: idController.text,
                        name: nameController.text,
                        schoolName: schoolNameController.text));

                    idController.clear();
                    nameController.clear();
                    schoolNameController.clear();
                    _title = 'Plasse write right information';
                    flag = true; 
                    Navigator.pop(context);
                    notifyListeners();
                  } else {
                    flag = false;
                    _title = "wrong Informatin";
                    notifyListeners();
                  }

                  
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          );
        });
  }

// Hive delete mathod

  Future<void> deleteMathod(NoteModel val) async {
    Box box = Hive.box('note');

    box.delete(val);
    notifyListeners();
  }
}
