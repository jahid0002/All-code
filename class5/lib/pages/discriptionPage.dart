import 'package:class5/controller/noteProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DiscriptionPage extends StatelessWidget {
  const DiscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    NoteProvider data = Provider.of<NoteProvider>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: const Text(
            'Discription Note',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 20,
                color: Colors.white,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  size: 20,
                  color: Colors.white,
                ))
          ],
        ),
        body: Consumer<NoteProvider>(
          builder: (context, data, child) {
            return SafeArea(
              child: data.noteListSave.length == null ||
                      data.noteListSave.length < 1
                  ? const Center(
                      child: Text(
                      'Empty Note',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ))
                  : Container(
                      height: size.height,
                      width: size.width,
                      color: const Color.fromARGB(255, 234, 230, 242),
                      child: Consumer<NoteProvider>(
                        builder: (context, data, child) {
                          return SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.file(
                                  data.noteListSave[data.currIndex!]!.imageUrl!,
                                  height: size.height / 3,
                                  width: size.width,
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(
                                  height: size.height / 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    'Title : ${data.noteListSave[data.currIndex!]!.title}',
                                    style: const TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height / 40,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    'Discription : ',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height / 100,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 48.0, right: 15),
                                  child: Text(
                                      ' ${data.noteListSave[data.currIndex!]!.discription}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black)),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
            );
          },
        ),
        bottomNavigationBar: Consumer<NoteProvider>(
          builder: (context, data, child) {
            return 
            data.noteListSave.length == null || data.noteListSave.length < 1 ? 
              const Row()
            
            : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit,
                      size: 22,
                      color: Colors.black,
                    )),
                IconButton(
                    onPressed: () {
                      data.dialogShow(
                          context, data.noteListSave[data.currIndex!]!, 1);
                    },
                    icon: const Icon(
                      Icons.delete,
                      size: 22,
                      color: Colors.black,
                    )),
                IconButton(
                    onPressed: () {
                      data.addFavarite(data.noteListSave[data.currIndex!]!);
                    },
                    icon: data.noteListSave[data.currIndex!]!.cheak? const Icon(
                            Icons.favorite,
                            size: 22,
                            color: Colors.black,
                          )
                        :const Icon(
                      Icons.favorite_border_outlined,
                      size: 22,
                      color: Colors.black,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.sort,
                      size: 22,
                      color: Colors.black,
                    )),
              ],
            );
          },
        ));
  }
}
