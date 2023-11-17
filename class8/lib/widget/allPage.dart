import 'package:class8/controller/imageProvider.dart';
import 'package:class8/widget/appBer_Home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade500,
        title: text('ListViewBuilder', 24, FontWeight.w700, Colors.white),
        leading: const Icon(
          Icons.home,
          color: Colors.white,
          size: 25,
        ),
      ),
      body: Consumer<ImagesProvider>(
        builder: ((context, data, child) {
          return ListView.builder(
              itemCount: data.imageList.length,
              itemBuilder: ((context, index) {
                return Image.asset(data.imageList[index], fit: BoxFit.cover);
              }));
        }),
      ),
    );
  }
}

class ListViewSeparet extends StatelessWidget {
  const ListViewSeparet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade500,
        title: text('ListView.Separeted', 24, FontWeight.w700, Colors.white),
        leading: const Icon(
          Icons.home,
          color: Colors.white,
          size: 25,
        ),
      ),
      body: Consumer<ImagesProvider>(
        builder: (context, data, child) {
          return ListView.separated(
            itemCount: data.imageList.length,
            itemBuilder: ((context, index) {
              return Image.asset(data.imageList[index], fit: BoxFit.cover);
            }),
            separatorBuilder: (context, index) => const Divider(
             
              //color: Colors.purple,
            ),
          );
        },
      ),
    );
  }
}

class ListViewBuilderNetwork extends StatelessWidget {
  const ListViewBuilderNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade500,
        title: text('Network Images', 24, FontWeight.w700, Colors.white),
        leading: const Icon(
          Icons.home,
          color: Colors.white,
          size: 25,
        ),
      ),
      body: Consumer<ImagesProvider>(
        builder: (context, data, child) {
          return ListView.builder(
              itemCount: 1, //data.networkList.length,
              itemBuilder: ((context, index) {
                return Image.network(
                    'https://unsplash.com/photos/a-close-up-of-a-clock-with-red-lights-on-it-uT4XkN39vcw', 
                    fit: BoxFit.cover,
                    );
              }));
        },
      ),
    );
  }
}
