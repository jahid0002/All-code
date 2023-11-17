import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:practice_api/apiController/noteModel.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<NoteModel> postList = [];
  Future<List<NoteModel>> getData() async {
    http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        postList.add(NoteModel.fromJson(i));
      }
      return postList;
    } else {
      return postList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Home',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, data) {
            if (data.hasData) {
              return Center(
                  child: ListView.builder(
                      itemCount: postList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Text(
                            '${postList[index].id.toString()}',
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.green,
                            ),
                          ),
                          title: Text(
                            '${postList[index].title.toString()}',
                            style: const TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          subtitle: Expanded(
                            child: Text(
                              '${postList[index].body.toString()}',
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.green,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          trailing: Expanded(
                            child: Text(
                              '${postList[index].userId.toString()}',
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.green, 
                                overflow: TextOverflow.ellipsis
                              ),
                            ),
                          ),
                        );
                      }));
            } else {
              return const Center(child: Text('Loading'));
            }
          }),
    );
  }
}
