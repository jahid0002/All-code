import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppbar extends StatelessWidget {
  AnimationController animationController;
  Animation colorTween, homeTween, yogaTween, iconTween, drawerTween;
  Function()? onPressed;

  CustomAppbar(
      {required this.animationController,
      required this.colorTween,
      required this.homeTween,
      required this.yogaTween,
      required this.iconTween,
      required this.drawerTween,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100, 
      child: AnimatedBuilder(animation: animationController, builder: (context, child)=> AppBar(
        leading: IconButton(onPressed: onPressed, icon: Icon(Icons.menu, color: drawerTween.value)), 
        backgroundColor: colorTween.value,
        title: Row(children: [
          Text('HOME', style: TextStyle(
            color: homeTween.value, 
            fontSize: 22, 
            fontWeight: FontWeight.bold
          ),), 
          Text(
              'YOGA',
              style: TextStyle(
                  color: yogaTween.value,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
        ]), 
        actions: [
          const Icon(Icons.notifications, ), 
          CircleAvatar(
            backgroundColor: homeTween.value,
          )
        ],
      ),
      
      ),
    );
  }
}
