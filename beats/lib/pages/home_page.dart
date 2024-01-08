import 'package:beats/const/color.dart';
import 'package:beats/const/text.dart';
import 'package:beats/controller/play_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:on_audio_query/on_audio_query.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
 
  HomePage({super.key});

  PlayController playController = Get.put(PlayController());

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.sizeOf(context).height;
    // double width = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AllColor.bgColor,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: AllColor.pinkColor,
          title: All.text('Beats',
              color: Colors.black, fontWeight: FontWeight.w700, size: 28),
          leading: const Icon(
            Icons.sort_rounded,
            size: 25,
            color: Colors.black45,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 25,
                  color: Colors.black45,
                ))
          ],
        ),
        body: FutureBuilder<List<SongModel>>(future: playController.audioQuery.querySongs(
                 ignoreCase: true,
                 orderType: OrderType.ASC_OR_SMALLER, 
                 sortType: null, 
                 uriType: UriType.EXTERNAL
        ),
        
         builder: ((context, snapshot) {
          
          if(snapshot.data == null ){
            return const Center(child: CircularProgressIndicator(),);
          }else if(snapshot.data!.isEmpty){
            return Center(child: All.text('Data not found'));
          }else{
            return Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 15, left: 15),
          child: ListView.builder(
              physics: const ClampingScrollPhysics(),
              itemCount: 100,
              itemBuilder: ((context, index) {
                return Card(
                  elevation: 2,
                  shadowColor: AllColor.pinkColor,
                  child: ListTile(
                    title: All.text(
                      'Music Name',
                      color: Colors.black87,
                    ),
                    subtitle: All.text('Artist Name',
                        color: Colors.black54, size: 16),
                    leading: const Icon(
                      Icons.music_note,
                      size: 30,
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.play_arrow,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  ),
                );
              })),
        );
          }
        }))
      ),
    );
  }
}
