import 'package:example2/Provider/list_Provider.dart';
import 'package:example2/Screan/themScrean.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Favorite();
  }
}

class _Favorite extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                size: 30,
                color: Colors.white,
              ))
        ],
        backgroundColor: Colors.purple,
        // centerTitle: true,
        title: const Text(
          'Favorite List',
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
                  itemCount: value.selectedItem.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        value.listItem(index);
                      },
                      title: Text(
                        // ignore: prefer_interpolation_to_compose_strings
                        'Item' + [index + 1].toString(),
                      ),
                      trailing: value.selectedItem.contains(index)
                          ? Icon(
                              Icons.favorite,
                              color: Colors.red.shade700,
                            )
                          : Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.red.shade300,
                            ),
                    );
                  });
            },
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ThemePage()));
        },
        backgroundColor: Colors.purple.shade400,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
