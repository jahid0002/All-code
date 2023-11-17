// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:example2/Provider/list_Provider.dart';
import 'package:example2/Screan/favorite_screan.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> selectedItem = [];
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:12.0),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Favorite()));
                },
                icon: const Padding(
                  padding: EdgeInsets.only(right:0.0),
                  child:  Icon(
                    Icons.favorite,
                    size: 30,
                    color: Colors.white,
                  ),
                )),
          )
        ],
        backgroundColor: Colors.purple,
       // centerTitle: true,
        title: const Text(
          'List',
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(child: Consumer<ListProvider>(
            builder: (context, value, child) {
              return ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        value.listItem(index);
                      },
                      title: Text(
                        'Item' + [index + 1].toString(),
                      ),
                      trailing: value.selectedItem.contains(index)
                          ? Icon(Icons.favorite, color: Colors.red.shade700,)
                          : Icon(Icons.favorite_border_outlined, color: Colors.red.shade400),
                    );
                  });
            },
          )),
        ],
      ),
    );
  }
}
