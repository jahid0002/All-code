import 'package:class16/controller/hive_controller/get_controller.dart';
import 'package:class16/controller/notification_controller.dart';
import 'package:class16/note_model/note_model.dart';
import 'package:class16/pages/dialog_show.dart';
import 'package:class16/pages/notification_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NotificationController notificationController = NotificationController();
  @override
  void initState() {
    super.initState();
    notificationController.notificationRequest();
    notificationController.getDisplayToken().then((value) {
      print(value);
    });
    notificationController.seeFirebase(context);
  }

  DialogShow dialog = DialogShow();
  final hiveBox = Hive.box<NoteModel>('note');
  final controler = Get.put(NoteControllers());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
        title: const Text(
          'Note Pad',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(const NotificationPage());
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.white,
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            dialog.addDialog(context);
          },
          backgroundColor: Colors.blue.shade700,
          child: const Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          )),
      body: ValueListenableBuilder(
        valueListenable: hiveBox.listenable(),
        builder: (context, box, child) {
          return Padding(
            padding: const EdgeInsets.only(
                right: 15.0, left: 15, top: 5, bottom: 10),
            child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: box.keys.length,
                itemBuilder: (context, index) {
                  NoteModel? note = box.getAt(index);
                  return Card(
                    color: Colors.white60,
                    elevation: 3,
                    shadowColor: Colors.blue.shade600,
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      tileColor: Colors.white60,
                      title: Text(
                        note!.name,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue.shade600),
                      ),
                      leading: Text(
                        note.id,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue),
                      ),
                      trailing: SizedBox(
                        width: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                dialog.updateNote(context, note, index);
                              },
                              child: Icon(
                                Icons.edit,
                                color: Colors.blue.shade300,
                                size: 20,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                dialog.deleteNote(context, index);
                              },
                              child: Icon(Icons.delete,
                                  color: Colors.blue.shade300),
                            ),
                          ],
                        ),
                      ),
                      subtitle: Text(
                        note.diperment,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue),
                      ),
                    ),
                  );
                }),
          );
        },
      ),
    );
  }
}
