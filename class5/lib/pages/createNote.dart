import 'package:class5/controller/noteModel.dart';
import 'package:class5/controller/noteProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CreateNote extends StatelessWidget {
  const CreateNote({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NoteProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            if (provider.titleController.text.isNotEmpty) {
              provider.addNote(NoteModel(
                  title: provider.titleController.text,
                  discription: provider.discription.text,
                  imageUrl: provider.imageUrl));
            } else {
              provider.titleController.clear();
              provider.discription.clear();
            }
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text(
          'CreateNote',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.info, size: 30, color: Colors.white)),
          ),
        ],
      ),
      body: SafeArea(
          child: Consumer<NoteProvider>(
            builder: (context, data, child) {
              return  Form(
                  key: provider.key,
                  child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 20,
                ),
                TextFormField(
                  // ignore: body_might_complete_normally_nullable
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Empty File';
                    }
                  },
                  controller: provider.titleController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      focusColor: Colors.deepPurpleAccent,
                      hintText: 'title',
                      suffixIcon: IconButton(
                          onPressed: () {
                            provider.titleController.clear();
                            provider.discription.clear();
                          },
                          icon: const Icon(
                            Icons.clear,
                            color: Colors.deepPurpleAccent,
                            size: 25,
                          )),
                      prefixIcon: Icon(Icons.title,
                          size: 35, color: Colors.deepPurpleAccent.shade200)),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 25,
                ),
                TextFormField(
                 
                  // ignore: body_might_complete_normally_nullable
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Empty File';
                    }
                  },
                  controller: provider.discription,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: "write discription",
                    focusColor: Colors.deepPurpleAccent,
                    prefixIcon: Icon(Icons.edit,
                        size: 30, color: Colors.deepPurpleAccent.shade200),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Consumer<NoteProvider>(
                      builder: (context, value, child) {
                        return Expanded(
                          child: Text(
                            // ignore: unnecessary_string_interpolations
                            '${value.imageHint}',
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        );
                      },
                    ),
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            provider.imagePicker();
                          },
                          icon: Icon(Icons.image,
                              color: Colors.deepPurpleAccent.shade200)),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 30,
                ),
               
                   InkWell(
                    onTap: () {
                    
                      if (provider.titleController.text.isNotEmpty &&
                          provider.discription.text.isNotEmpty ) {
                        provider.addNoteSave(NoteModel(
                          title: provider.titleController.text,
                          discription: provider.discription.text,
                          imageUrl: provider.imageUrl,
                          cheak: false,
                        ));
                      }
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.sizeOf(context).height / 20,
                      width: MediaQuery.sizeOf(context).width / 2,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent.shade700,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Save',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  
              ],
            ),
                  ),
                );
            },
         
          )),
    );
  }
}
