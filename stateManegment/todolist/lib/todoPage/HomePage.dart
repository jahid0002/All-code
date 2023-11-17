import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/class/Todomodel.dart';
import 'package:todolist/todoProvider/todoProvider.dart';
import 'package:msh_checkbox/msh_checkbox.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textControlar = TextEditingController();

  Future<void> _showDialog(BuildContext context) {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Add ToDo List'),
            content: TextField(
              controller: _textControlar,
              decoration: const InputDecoration(
                hintText: 'Write to do list',
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')),
              TextButton(
                  onPressed: () {
                    if (_textControlar.text.isEmpty) {
                      return;
                    }
                    context.read<ToDoProvider>().addTodoList(
                        ToDoModel(model: _textControlar.text, flag: false));
                    _textControlar.clear();
                    Navigator.pop(context);
                  },
                  child: const Text('Submit'))
            ],
          );
        });
  }

  @override
  void initState() {
    super.initState();
    final ToDoProvider provider =
        Provider.of<ToDoProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      provider.dateTime();
    });
  }

  @override
  Widget build(BuildContext context) {
    
    final ToDoProvider provider = Provider.of<ToDoProvider>(
      context,
    );
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  color: Color(0xff622Ca7),
                ),
                child: Consumer<ToDoProvider>(
                  builder: (context, value, child) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'To Do List',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                            '${value.time.hour.toString()} : ${value.time.minute.toString()} : ${value.time.second.toString()}', 
                            style:const TextStyle(color: Colors.white, fontWeight: FontWeight.w200) ,),
                      ],
                    );
                  },
                )),
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
                itemCount: provider.todolist.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      provider.changedStatas(provider.todolist[index]);
                    },
                    leading: MSHCheckbox(
                        value: provider.todolist[index].flag,
                        colorConfig:
                            MSHColorConfig.fromCheckedUncheckedDisabled(
                                checkedColor: Colors.blue),
                        style: MSHCheckboxStyle.stroke,
                        onChanged: (val) {
                          provider.changedStatas(provider.todolist[index]);
                        }),
                    title: Text(provider.todolist[index].model,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          decoration: provider.todolist[index].flag
                              ? TextDecoration.lineThrough
                              : null,
                        )),
                    trailing: IconButton(
                      onPressed: () {
                        provider.removeElementList(provider.todolist[index]);
                      },
                      icon: Icon(Icons.delete),
                    ),
                  );
                }),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDialog(context);
        },
        backgroundColor: const Color(0xff622Ca7),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
