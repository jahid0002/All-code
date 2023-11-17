// ignore: file_names
import 'package:flutter/material.dart';
import 'package:msh_checkbox/msh_checkbox.dart';
import 'package:provider/provider.dart';
import 'package:todolist2/page/modelPage.dart';
import 'package:todolist2/provider/todoProvider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textControler = TextEditingController();
  Future<void> _showDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'Add Your Comand',
              style: TextStyle(color: Colors.blue.shade400),
            ),
            content: TextField(
                controller: _textControler,
                decoration: InputDecoration(
                    focusColor: Colors.blue.shade300,
                    hintText: 'Write your comand')),
            actions: [
              TextButton(
                  onPressed: () {
                    _textControler.clear();
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: Colors.blue.shade400),
                  )),
              TextButton(
                  onPressed: () {
                    if (_textControler.toString().isEmpty) {
                      return Navigator.pop(context);
                    }
                    context.read<TODOListProvider>().addList(ToDoList(
                        isCompleted: false, title: _textControler.text));
                    _textControler.clear();
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Submited',
                    style: TextStyle(color: Colors.blue.shade700),
                  )),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.blue.shade100),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                    color: Colors.blue.shade400),
                child: const Text(
                  'To Do List',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: Consumer<TODOListProvider>(
                    builder: (context, provider, child) {
                  return ListView.builder(
                      itemCount: provider.allList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 40.0, left: 40),
                          child: ListTile(
                            leading: MSHCheckbox(
                              value: provider.allList[index].isCompleted,
                              onChanged: (val) {
                                provider.chaneStatasTodoList(
                                    provider.allList[index]);
                              },
                              style: MSHCheckboxStyle.stroke,
                              colorConfig:
                                  MSHColorConfig.fromCheckedUncheckedDisabled(
                                      checkedColor: Colors.black,
                                      uncheckedColor: Colors.white),
                            ),
                            title: Text(
                              // ignore: unnecessary_string_interpolations
                              '${provider.allList[index].title}',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 7, 7, 7),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  decoration:
                                      provider.allList[index].isCompleted
                                          ? TextDecoration.lineThrough
                                          : null),
                            ),
                            trailing: IconButton(
                                onPressed: () {
                                  provider
                                      .removeFromList(provider.allList[index]);
                                },
                                icon: const Icon(
                                  Icons.delete,
                                  size: 22,
                                  color: Colors.black38,
                                )),
                          ),
                        );
                      });
                })),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDialog(context);
        },
        shape: const CircleBorder(
            side: BorderSide(width: 1, color: Color(0xfface0f9))),
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.blue.shade700,
        ),
      ),
    );
  }
}
