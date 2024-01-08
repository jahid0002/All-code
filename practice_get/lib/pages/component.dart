import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_get/const/all_const.dart';
import 'package:practice_get/controllers/get_contrillers.dart';
import 'package:practice_get/models/NoteModel.dart';

// ignore: must_be_immutable
class Component extends StatelessWidget {
  Component({super.key, required this.note});
  NoteModel note;
  NoteControllers noteControllers = Get.put(NoteControllers());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NoteControllers>(builder: (data) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15),
        child: InkWell(
          child: Card(
            elevation: 3,
            shadowColor: Colors.blue,
            child: ListTile(
              trailing: IconButton(
                icon: Icon(Icons.delete, size: 20, color: Colors.blue.shade200),
                onPressed: () {
                  _delete(context, note);
                },
              ),
              title: All.text(note.name, Colors.black, 20, FontWeight.w700),
              leading: All.text(note.id, Colors.black, 16, FontWeight.w700),
              subtitle: Expanded(
                  child: Text(
                note.discription,
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis),
              )),
            ),
          ),
          onTap: () {
            Get.to(DetailesPage(note: note));
          },
        ),
      );
    });
  }

  Future<void> _delete(BuildContext context, NoteModel note) async {
    return showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
              title:
                  All.text('Confirm delete?', Colors.blue, 20, FontWeight.w800),
              actions: [
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                        // color: Colors.blue,
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: All.text('Cancel', Colors.blue, 18, FontWeight.w700),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                              topLeft: Radius.circular(15)),
                          color: Colors.blue,
                          border: Border.all(width: 2, color: Colors.blue)),
                      child:
                          All.text('Delete', Colors.white, 18, FontWeight.w700),
                    ),
                    onTap: () {
                      noteControllers.deleteNote(note);
                      Navigator.pop(context);
                    }),
              ]);
        });
  }
}

// ignore: must_be_immutable
class DetailesPage extends StatelessWidget {
  NoteModel note;
  DetailesPage({super.key, required this.note});
  NoteControllers noteControllers = Get.put(NoteControllers());

  static final _key = GlobalKey<FormState>();
  static final nameClt = TextEditingController();
  static final idClt = TextEditingController();
  static final discriptionClt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 15,
              color: Colors.blue,
            ),
          ),
          toolbarHeight: 100,
          centerTitle: true,
          elevation: 0,
          title: All.text('Details', Colors.blue, 22, FontWeight.w700),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                  onPressed: () {
                    nameClt.text = note.name;
                    idClt.text = note.id;
                    discriptionClt.text = note.discription;
                    _showDialog(context);
                  },
                  icon: const Icon(Icons.edit, size: 20, color: Colors.blue)),
            )
          ],
        ),
        body: GetBuilder<NoteControllers>(
          builder: (data) {
            return SafeArea(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(right: 18.0, left: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                     Row(
                    children: [
                      All.text('Name:', Colors.blue, 22, FontWeight.w700),
                      const SizedBox(
                        width: 10,
                      ),
                      All.text(note.name, Colors.black, 22, FontWeight.w700),
                    ],
                  ), 
                    Row(
                    children: [
                     All.text(
                          'Id:', Colors.blue, 22, FontWeight.w700), 
                            const SizedBox(
                        width: 10,
                      ),
                      All.text(note.id, Colors.black, 22, FontWeight.w700),
                    ],
                  ),
                   
                   
                    const SizedBox(
                      height: 20,
                    ),
                    All.text('Discription:', Colors.blue, 22,
                        FontWeight.w700), 
                          All.text(note.discription, Colors.black, 16,
                      FontWeight.w700),
                  ],
                ),
              ),
            ));
          }
        ));
  }

  Future<void> _showDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: All.text('Add Note', Colors.blue, 20, FontWeight.w800),
            content: Form(
                key: _key,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: nameClt,
                        // ignore: body_might_complete_normally_nullable
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Empty Field";
                          }
                        },
                        decoration: const InputDecoration(
                            hintText: 'Enter Name',
                            prefixIcon: Icon(
                              Icons.edit,
                              size: 18,
                              color: Colors.blue,
                            )),
                      ),
                      TextFormField(
                        controller: idClt,
                        // ignore: body_might_complete_normally_nullable
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Empty Field";
                          }
                        },
                        decoration: const InputDecoration(
                            hintText: 'Enter Id',
                            prefixIcon: Icon(
                              Icons.edit,
                              size: 18,
                              color: Colors.blue,
                            )),
                      ),
                      TextFormField(
                        controller: discriptionClt,
                        // ignore: body_might_complete_normally_nullable
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Empty Field";
                          }
                        },
                        decoration: const InputDecoration(
                            hintText: 'Enter Discription',
                            prefixIcon: Icon(
                              Icons.edit,
                              size: 18,
                              color: Colors.blue,
                            )),
                      ),
                    ],
                  ),
                )),
            actions: [
              InkWell(
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(15)),
                      // color: Colors.blue,
                      border: Border.all(width: 2, color: Colors.blue)),
                  child: All.text('Cancel', Colors.blue, 18, FontWeight.w700),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              InkWell(
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(15)),
                      color: Colors.blue,
                      border: Border.all(width: 2, color: Colors.blue)),
                  child: All.text('submit', Colors.white, 18, FontWeight.w700),
                ),
                onTap: () {
                  if (_key.currentState!.validate()) {
                    NoteModel newNote = NoteModel(
                        name: nameClt.text,
                        id: idClt.text,
                        discription: discriptionClt.text,
                        isModel: false);
                    noteControllers.updateNote(newNote, note);
                    //  noteControllers.addNote(note);
                    Navigator.pop(context);
                  }
                },
              ),
            ],
          );
        });
  }
}
