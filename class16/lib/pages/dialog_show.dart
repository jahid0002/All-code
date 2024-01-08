import 'package:class16/controller/database_controller.dart';
import 'package:class16/controller/hive_controller/get_controller.dart';
import 'package:class16/note_model/note_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogShow {
  NoteControllers noteControllers = NoteControllers();

  final _key = GlobalKey<FormState>();
  final nameClt = TextEditingController();
  final idClt = TextEditingController();
  final dipermentClt = TextEditingController();
  final controller = Get.put(DatabaseController());

  Future<void> addDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(
              'Add Note',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w900,
                color: Colors.blue.shade700,
              ),
            ),
            content: SingleChildScrollView(
              child: Form(
                  key: _key,
                  child: Column(
                    children: [
                      Card(
                        elevation: 2,
                        shadowColor: Colors.blue.shade700,
                        child: TextFormField(
                          controller: nameClt,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Empty Field';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: 'Enter Your Name',
                              prefixIcon: Icon(Icons.edit,
                                  color: Colors.blue.shade400, size: 16),
                              border: InputBorder.none),
                        ),
                      ),
                      Card(
                        elevation: 2,
                        shadowColor: Colors.blue.shade700,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: idClt,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Empty Field';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: 'Enter Your Id',
                              prefixIcon: Icon(Icons.edit,
                                  color: Colors.blue.shade400, size: 16),
                              border: InputBorder.none),
                        ),
                      ),
                      Card(
                        elevation: 2,
                        shadowColor: Colors.blue.shade700,
                        child: TextFormField(
                          controller: dipermentClt,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Empty Field';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: 'Enter Your Deperment',
                              prefixIcon: Icon(Icons.edit,
                                  color: Colors.blue.shade400, size: 16),
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  )),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade700,
                            borderRadius: BorderRadius.circular(15)),
                        alignment: Alignment.center,
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  InkWell(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade700,
                            borderRadius: BorderRadius.circular(15)),
                        alignment: Alignment.center,
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      if (_key.currentState!.validate()) {
                        var note = NoteModel(
                            name: nameClt.text,
                            id: idClt.text,
                            diperment: dipermentClt.text);
                        noteControllers.addNote(note);
                        nameClt.clear();
                        idClt.clear();
                        dipermentClt.clear();
                        Navigator.pop(context);
                      }
                    },
                  ),
                ],
              ),
            ],
          );
        });
  }

  Future<void> deleteNote(BuildContext context, int index) async {
    return showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(
              'Are You Sior ?',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w900,
                color: Colors.blue.shade700,
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade700,
                            borderRadius: BorderRadius.circular(15)),
                        alignment: Alignment.center,
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  InkWell(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade700,
                            borderRadius: BorderRadius.circular(15)),
                        alignment: Alignment.center,
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Delete',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      noteControllers.deleteNote(index);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          );
        });
  }

  Future<void> updateNote(
      BuildContext context, NoteModel note, int index) async {
    nameClt.text = note.name;
    idClt.text = note.id;
    dipermentClt.text = note.diperment;
    return showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(
              'Add Note',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w900,
                color: Colors.blue.shade700,
              ),
            ),
            content: SingleChildScrollView(
              child: Form(
                  key: _key,
                  child: Column(
                    children: [
                      Card(
                        elevation: 2,
                        shadowColor: Colors.blue.shade700,
                        child: TextFormField(
                          controller: nameClt,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Empty Field';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: 'Enter Your Name',
                              prefixIcon: Icon(Icons.edit,
                                  color: Colors.blue.shade400, size: 16),
                              border: InputBorder.none),
                        ),
                      ),
                      Card(
                        elevation: 2,
                        shadowColor: Colors.blue.shade700,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: idClt,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Empty Field';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: 'Enter Your Id',
                              prefixIcon: Icon(Icons.edit,
                                  color: Colors.blue.shade400, size: 16),
                              border: InputBorder.none),
                        ),
                      ),
                      Card(
                        elevation: 2,
                        shadowColor: Colors.blue.shade700,
                        child: TextFormField(
                          controller: dipermentClt,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Empty Field';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: 'Enter Your Deperment',
                              prefixIcon: Icon(Icons.edit,
                                  color: Colors.blue.shade400, size: 16),
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  )),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade700,
                            borderRadius: BorderRadius.circular(15)),
                        alignment: Alignment.center,
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  InkWell(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade700,
                            borderRadius: BorderRadius.circular(15)),
                        alignment: Alignment.center,
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      var newNote = NoteModel(
                          name: nameClt.text,
                          id: idClt.text,
                          diperment: dipermentClt.text);
                      noteControllers.updateNote(index, newNote);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          );
        });
  }

  Future<void> popUpDeleteNote(BuildContext context, String id) async {
    return showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(
              'Are You Sior ?',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w900,
                color: Colors.blue.shade700,
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade700,
                            borderRadius: BorderRadius.circular(15)),
                        alignment: Alignment.center,
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  InkWell(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade700,
                            borderRadius: BorderRadius.circular(15)),
                        alignment: Alignment.center,
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Delete',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      controller.deleteDatabase(id);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          );
        });
  }

  Future<void> popUpUpdateNote(
      BuildContext context, String title, String id) async {
    nameClt.text = title;

    return showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(
              'Add Note',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w900,
                color: Colors.blue.shade700,
              ),
            ),
            content: SingleChildScrollView(
              child: Form(
                  key: _key,
                  child: Column(
                    children: [
                      Card(
                        elevation: 2,
                        shadowColor: Colors.blue.shade700,
                        child: TextFormField(
                          controller: nameClt,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Empty Field';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: 'Enter Your title',
                              prefixIcon: Icon(Icons.edit,
                                  color: Colors.blue.shade400, size: 16),
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  )),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade700,
                            borderRadius: BorderRadius.circular(15)),
                        alignment: Alignment.center,
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  InkWell(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade700,
                            borderRadius: BorderRadius.circular(15)),
                        alignment: Alignment.center,
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      controller.updateDatabase(id, nameClt.text.toString());
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          );
        });
  }
}
