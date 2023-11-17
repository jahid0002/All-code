import 'package:class5/controller/noteProvider.dart';
import 'package:class5/pages/draftDiscription.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DraftPage extends StatelessWidget {
  const DraftPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NoteProvider>(context, listen: false);
    return Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Consumer<NoteProvider>(
        builder: (context, val, child) {
          return ListView.builder(
              itemCount: provider.noteList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: ListTile(
                    onTap: () {
                      val.draftIndexAt(index);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const DraftDiscriptionPage()));
                    },
                    onLongPress: () {
                      val.deleteNote(val.noteList[index]);
                    },
                    leading: val.noteList[index].imageUrl != null
                        ? Image.file(val.noteList[index].imageUrl!)
                        : Image.network(
                            'https://unsplash.com/photos/person-wearing-hoodie-Kgkz-2QZ-0Q'),
                    title: Text(
                      '${val.noteList[index].title}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: val.noteList[index].discription.isNotEmpty
                        ? Expanded(
                            child: Text(
                              '${val.noteList[index].discription}',
                              style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          )
                        : null,
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Colors.deepPurpleAccent.shade400,
                        )),
                  ),
                );
              });
        },
      ),
    );
  }
}
