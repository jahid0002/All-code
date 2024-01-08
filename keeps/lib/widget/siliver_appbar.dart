import 'package:flutter/material.dart';
import 'package:keeps/const/app_const_page.dart';

class SiliverAppbar extends StatelessWidget {
  const SiliverAppbar({super.key, required this.photoUrl, required this.onTap});
  final VoidCallback onTap;
  final String photoUrl;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.06,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppConst.appbarColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: AppConst.appbarColor,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: 25,
            color: AppConst.whiteColor,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Search your notes',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.view_agenda_outlined,
                size: 25,
                color: AppConst.whiteColor,
              )),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: InkWell(
              onTap: onTap,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(photoUrl),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
