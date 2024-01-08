import 'package:class16/pages/dialog_show.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PopUp extends StatelessWidget {
  PopUp({super.key, required this.id, required this.title});

  String id;
  String title;
  final dialogShow = DialogShow();
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: Colors.blue.shade400,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      icon: Icon(
        Icons.more_vert,
        color: Colors.blue.shade700,
      ),
      itemBuilder: (context) {
        return [
          PopupMenuItem(
              value: 1,
              child: Card(
                child: ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    dialogShow.popUpUpdateNote(context, title, id);
                  },
                  leading: const Icon(
                    Icons.edit,
                    size: 18,
                  ),
                  title: const Text(
                    'Edit',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              )),
          PopupMenuItem(
              value: 2,
              child: Card(
                child: ListTile(
                  onTap: () { 
                    Navigator.pop(context);
                    dialogShow.popUpDeleteNote(context, id);
                  },
                  leading: const Icon(
                    Icons.delete,
                    size: 18,
                  ),
                  title: const Text(
                    'Delete',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ))
        ];
      },
    );
  }
}
