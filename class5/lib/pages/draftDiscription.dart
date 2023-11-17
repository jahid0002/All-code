

import 'package:class5/controller/noteProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DraftDiscriptionPage extends StatelessWidget {
  const DraftDiscriptionPage({super.key});

  @override
  Widget build(BuildContext context) { 
     Size size = MediaQuery.sizeOf(context);
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
        body: SafeArea(
          child: Container(
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
                        data.noteList[data.draftIndex!].imageUrl!,
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
                          'Title : ${data.noteList[data.draftIndex!].title}',
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
                        padding: const EdgeInsets.only(left: 48.0, right: 15),
                        child: Text(
                            ' ${data.noteList[data.draftIndex!].discription}',
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
        ),
        bottomNavigationBar: Consumer<NoteProvider>(
          builder: (context, data, child) {
            return Row(
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
                    //  data.dialogShow(context, data.draftIndex, 0);
                    },
                    icon: const Icon(
                      Icons.delete,
                      size: 22,
                      color: Colors.black,
                    )),
                IconButton(
                    onPressed: () {
                      
                    },
                 icon:  const Icon(
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