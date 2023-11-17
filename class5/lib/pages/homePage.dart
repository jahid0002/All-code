import 'package:class5/controller/noteProvider.dart';
import 'package:class5/pages/createNote.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text(
          'NotePad',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
          child: 
          
          Consumer<NoteProvider>(builder: ((context, value, child) {
            return value.list[value.index];
          }))
        
      ),
      bottomNavigationBar: Consumer<NoteProvider>(
        builder: (context, value, child) {
          return BottomNavigationBar(
              selectedFontSize: 16,
              unselectedFontSize: 12,
              selectedItemColor: Colors.deepPurpleAccent.shade400,
              unselectedItemColor: Colors.grey,
              currentIndex: value.index,
              onTap: (val) {
                value.onChanged(val);
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.note_add,
                      size: 30,
                      //color: Colors.deepPurpleAccent,
                    ),
                    label: 'Note'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.drafts,
                      // color: Colors.deepPurpleAccent,
                      size: 30,
                    ),
                    label: 'Draft'),
              ]);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const CreateNote())));
          },
          backgroundColor: Colors.deepPurpleAccent,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }
}
