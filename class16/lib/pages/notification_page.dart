import 'package:class16/controller/api_controller/api_controller.dart';
import 'package:class16/controller/database_controller.dart';
import 'package:class16/pages/auth_page/database_page.dart';
import 'package:class16/widget/navigator_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final _formKey = GlobalKey<FormState>();
  final postClt = TextEditingController();
  final databaseController = Get.put(DatabaseController());
  NavigatedPage page = NavigatedPage();

  ApiController apiController = ApiController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade700,
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
          toolbarHeight: 70,
          title: const Text(
            'See Notification',
            style: TextStyle(
                fontSize: 21, fontWeight: FontWeight.w800, color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  page.logout();
                },
                icon: const Icon(Icons.logout_outlined,
                    color: Colors.white, size: 22))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue.shade700,
          onPressed: () {
            apiController.sendNotification();
          },
          child: const Icon(Icons.add, size: 30, color: Colors.white),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: height / 15,
              ),
              Form(
                  key: _formKey,
                  child: TextFormField(
                    controller: postClt,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Plasse write a post';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        hintText: 'What is your mind ?',
                        // prefixIcon: Icon(Icons.edit),
                        border: OutlineInputBorder()),
                    maxLines: 4,
                  )),
              SizedBox(
                height: height / 18,
              ),
              GetBuilder<DatabaseController>(builder: (get) {
                return InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      databaseController.addDatabase(postClt.text.toString());
                      postClt.clear();
                    }
                  },
                  child: Container(
                      height: height / 18,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade700,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: databaseController.isPost
                          ? const Text(
                              'Post',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          : const CircularProgressIndicator(
                              color: Colors.white,
                            )),
                );
              }),
              SizedBox(
                height: height / 100,
              ),
              InkWell(
                onTap: () {
                  Get.to(() =>  const DatabasePage());
                },
                child: Container(
                    height: height / 18,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.blue.shade700,
                      ),
                      // color: Colors.blue.shade700,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'See Post',
                      style: TextStyle(
                        color: Colors.blue.shade700,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
