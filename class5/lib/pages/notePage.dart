// ignore: file_names
import 'package:class5/controller/noteProvider.dart';
import 'package:class5/pages/discriptionPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NoteProvider>(context, listen: false);
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Consumer<NoteProvider>(
        builder: (context, val, child) {
          return ListView.builder(
              itemCount: provider.noteListSave.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Consumer<NoteProvider>(
                    builder: ((context, value, child) {
                      return ListTile(
                        onLongPress: () {
                          value.dialogShow(context,
                              value.noteListSave[value.currIndex!]!, 1);
                        },
                        // ignore: unnecessary_null_comparison
                        leading: val.noteListSave[index]!.imageUrl! != null
                            ? Image.file(val.noteListSave[index]!.imageUrl!)
                            : Image.network(
                                'https://unsplash.com/photos/person-wearing-hoodie-Kgkz-2QZ-0Q'),
                        title: Text(
                          // ignore: unnecessary_string_interpolations
                          '${val.noteListSave[index]!.title}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Expanded(
                          child: Text(
                            // ignore: unnecessary_string_interpolations
                            '${val.noteListSave[index]!.discription}',
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black54,
                                overflow: TextOverflow.ellipsis),
                          ),
                        ),
                        trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 17,
                              color: Colors.deepPurpleAccent.shade400,
                            )),
                        onTap: () {
                          value.indexAt(index);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DiscriptionPage()));
                        },
                      );
                    }),
                  ),
                );
              });
        },
      ),
    );
  }
}
