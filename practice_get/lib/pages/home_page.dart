import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_get/const/all_const.dart';
import 'package:practice_get/controllers/get_contrillers.dart';
import 'package:practice_get/models/NoteModel.dart';
import 'package:practice_get/pages/component.dart';


// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  final searchClt = TextEditingController();
  final searchKey = GlobalKey<FormState>();

  NoteControllers noteControllers = Get.put(NoteControllers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GetBuilder<NoteControllers>(builder: (data) {
            return IconButton(
                onPressed: () {
                  _showSearchDialog(context);
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 25,
                ));
          })
        ],
        backgroundColor: Colors.blue,
        title: const Text(
          'Note Pad',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: GetBuilder<NoteControllers>(
        builder: (controller) {
          return ListView.builder(
              shrinkWrap: true,
              itemCount: noteControllers.noteList.length,
              itemBuilder: ((context, index) {
                if (noteControllers.noteList.isEmpty) {
                  return Center(
                      child: All.text(
                          'Empty File', Colors.black, 26, FontWeight.w700));
                }
                return Component(note: noteControllers.noteList[index]);
              }));
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          _showDialog(context);
        },
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }

  // ignore: unused_element
  Future<void> _showSearchDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: All.text('Search Id', Colors.blue, 20, FontWeight.w700),
            content: Form(
              key: searchKey,
              child: TextFormField(
                controller: searchClt,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Empty Filed';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.edit,
                    color: Colors.blue,
                  ),
                  hintText: 'Search Id',
                ),
              ),
            ),
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
              GetBuilder<NoteControllers>(
                builder: (context) {
                  return InkWell(
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
                      if (searchKey.currentState!.validate()) {
                        noteControllers.searchingNote(searchClt.text);
                       
                      }
                    },
                  );
                }
              ),
            ],
          );
        });
  }

  Future<void> _showDialog(BuildContext context) async {
    final _key = GlobalKey<FormState>();
    final nameClt = TextEditingController();
    final idClt = TextEditingController();
    final discriptionClt = TextEditingController();
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
                    NoteModel note = NoteModel(
                        name: nameClt.text,
                        id: idClt.text,
                        discription: discriptionClt.text,
                        isModel: false);
                    noteControllers.addNote(note);
                    Navigator.pop(context);
                  }
                },
              ),
            ],
          );
        });
  }
}
