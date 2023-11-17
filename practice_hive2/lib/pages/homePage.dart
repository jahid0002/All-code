import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:practice_hive2/controller%20&%20model/boxes.dart';
import 'package:practice_hive2/controller%20&%20model/noteModel.dart';
import 'package:practice_hive2/controller%20&%20model/provider.dart';
import 'package:practice_hive2/directory/dialog.dart';
import 'package:practice_hive2/pages/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dialog = NoteDialog();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: ValueListenableBuilder<Box<NoteModel>>(
          valueListenable: Boxes.getData().listenable(),
          builder: (context, box, child) {
            var list = box.values.toList().cast<NoteModel>();
            return ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: IconButton(
                      onPressed: () {
                        final note = NoteProvider();
                        note.editNote(list[index], context, list[index].name,
                            list[index].number); 
                      },
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.teal,
                        size: 22,
                      ),
                    ),
                    trailing: iconBotton(list[index]),
                    title: Text(
                      '${list[index].name}',
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    subtitle: Text(
                      '${list[index].number}',
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  );
                });
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () async {
          dialog.ShowDialog(context);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
