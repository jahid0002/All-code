import 'package:class17/controller/api_controller.dart';
import 'package:class17/model/note_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
 const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade900,
          title: const Text(
            'Home',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
        body: GetBuilder<ApiController>(
          builder: (controller) {
            if(controller.loding){
              return 
             Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView.builder(
                    itemCount: controller.list.length,
                    itemBuilder: ((context, index) {
                      if (controller.list.isEmpty) {
                        return Center(
                            child: CircularProgressIndicator(
                                color: Colors.deepPurple.shade900));
                      }
                      NoteModel note = controller.list[index];
                      return Card(
                        elevation: 3,
                        shadowColor: Colors.deepPurple.shade900,
                        child: ListTile(
                          title: Text(
                            note.title.toString(),
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.deepPurple.shade800),
                          ),
                          subtitle: Text(
                            note.body.toString(),
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                overflow: TextOverflow.ellipsis),
                          ),
                          leading: Text(
                            note.id.toString(),
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.deepPurple.shade800),
                          ),
                        ),
                      );
                    })),
              );
            }else{
               return Center(
                  child: CircularProgressIndicator(
                      color: Colors.deepPurple.shade900));
            }
            
            
          },
        ));
  }
}
