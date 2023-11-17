import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:practice_hive3/hive_controller/boxes.dart';
import 'package:practice_hive3/hive_controller/noteModel.dart';

// Text Widget
Widget text(String title, double size, FontWeight fontWeight, Color color) {
  return Text(
    title,
    style: TextStyle(
      fontSize: size,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}

// Icon Widget
Widget icon(IconData icon, double size, Color color) {
  return Icon(
    icon,
    size: size,
    color: color,
  );
}

// Note Dialog

final nameClt = TextEditingController();
final numberClt = TextEditingController();

Future<void> addNoteDialog(context) async {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: text('Add Note', 24, FontWeight.w600, Colors.orange),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  // ignore: body_might_complete_normally_nullable
                  validator: (value) {
                    if (value == null) {
                      return 'Wrong information';
                    }
                  },
                  controller: nameClt,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Enter Name',
                    focusColor: Colors.orange,
                    prefixIcon: icon(Icons.edit, 20, Colors.orange),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  // ignore: body_might_complete_normally_nullable
                  validator: (value) {
                    if (value == null) {
                      return 'Wrong information';
                    }
                  },
                  controller: nameClt,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Enter Name',
                    focusColor: Colors.orange,
                    prefixIcon: icon(Icons.edit, 20, Colors.orange),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: text('Cancel', 20, FontWeight.w600, Colors.orange)),
            TextButton(
                onPressed: () async {
                  final data =
                      NoteModel(name: nameClt.text, number: numberClt.text);

                  final box = Boxes.getData();
                  box.add(data);
                  data.save();
                },
                child: text('Submit', 20, FontWeight.w600, Colors.orange)),
          ],
        );
      });
}




// Body Property
// ignore: non_constant_identifier_names
Widget Body() {  
  
  return ValueListenableBuilder<Box<NoteModel>>(
      valueListenable: Boxes.getData().listenable(),
      builder: (context, box, child) {
        return ListView.builder(
            itemCount: box.values.toList().length,
            itemBuilder: (context, index) {
              var list = box.values.toList().cast<NoteModel>();
              return ListTile(
                title: text('${list[index].name}', 22, FontWeight.w400, Colors.black),
              );
            });
      });
}
