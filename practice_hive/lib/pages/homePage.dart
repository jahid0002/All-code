import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:practice_hive/controller/dialog.dart';
import 'package:practice_hive/controller/noteModel.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  Box box = Hive.box('note');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Home',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      floatingActionButton: Consumer<NoteProvider>(
        builder: (context, data, child) {
          return FloatingActionButton(
            backgroundColor: Colors.teal,
            onPressed: () {
              data.dialogShow(context);
            },
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: const Icon(Icons.add, color: Colors.white),
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                size: 25,
                color: Colors.teal,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                size: 25,
                color: Colors.teal,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.sort,
                size: 25,
                color: Colors.teal,
              )),
        ]),
      ),
      body: ValueListenableBuilder(
        valueListenable: box.listenable(),
        builder: (context, box, child) {
          return ListView.builder(
              itemCount: box.keys.length,
              itemBuilder: (context, index) {
               NoteModel  note = box.getAt(index);
                return Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Consumer<NoteProvider>(
                    builder: (context, data, child) {
                      return ListTile(
                        onLongPress: () {
                          data.box.deleteAt(index);
                        },
                        horizontalTitleGap: 25,
                        focusColor: Colors.teal,
                        selectedTileColor: Colors.teal,
                        leading: Text(
                          '${note.id}',
                          style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        title: Text(
                          '${note.name}',
                          style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        subtitle: Expanded(
                          child: Text(
                            '${note.schoolName}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              });
        },
      ),
    );
  }
}
