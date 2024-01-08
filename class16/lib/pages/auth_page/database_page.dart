import 'package:class16/controller/database_controller.dart';
import 'package:class16/widget/popup_menu.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DatabasePage extends StatefulWidget {
  const DatabasePage({super.key});

  @override
  State<DatabasePage> createState() => _DatabasePageState();
}

class _DatabasePageState extends State<DatabasePage> {
  final databaseController = Get.put(DatabaseController());
  final _database = FirebaseDatabase.instance.ref('post');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 18,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text('See Post',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.white)),
        backgroundColor: Colors.blue.shade700,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(right: 20.0, left: 20, top: 10, bottom: 20),
        child: FirebaseAnimatedList(
            query: _database,
            itemBuilder: (context, snapshot, animation, index) {
              return GetBuilder<DatabaseController>(builder: (get) {
                return Card(
                  elevation: 3,
                  shadowColor: Colors.blue.shade400,
                  child: ListTile(
                    //onTap:
                    title: Text(
                      snapshot.child('title').value.toString(),
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: Colors.blue.shade700,
                      ),
                    ),
                    subtitle: Text(
                      snapshot.child('discription').value.toString(),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Colors.blue.shade700,
                      ),
                    ),
                    trailing:  PopUp(id: snapshot.child('discription').value.toString(), title: snapshot.child('title').value.toString(),),
                  ),
                );
              });
            }), 
      ),
    );
  }
}

class DatanaseUi extends StatelessWidget {
  DatanaseUi({super.key});

  final database = Get.put(() => DatabaseController());
  final _database = FirebaseDatabase.instance.ref('post');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 18,
              color: Colors.white,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          title: const Text('See Post',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.white)),
          backgroundColor: Colors.blue.shade700,
        ),
        body: GetBuilder<DatabaseController>(
          builder: (controller) {
            return StreamBuilder(
                stream: _database.onValue,
                builder: ((context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    Map<dynamic, dynamic> map =
                        snapshot.data!.snapshot.value as Map;
                    List<dynamic> list = [];
                    list.clear();
                    list = map.values.toList();

                    return ListView.builder(
                        itemCount: snapshot.data!.snapshot.children.length,
                        itemBuilder: ((context, index) {
                          final note = list[index];
                          return ListTile(
                            title: Text(note['title']),
                            subtitle: Text(note['discription']),
                          );
                        }));
                  }
                }));
          },
        ));
  }
}
