import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:yoga/need2.dart';
import 'package:yoga/pages/startPage.dart';
import 'package:yoga/widget/widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  // ignore: unused_field
  late Animation _colorTween, _homeTween, _yogaTween, _iconTween, _drawerTween;
  late AnimationController _textAnimationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 0));
    _colorTween = ColorTween(begin: Colors.transparent, end: Colors.white)
        .animate(_animationController);
    _iconTween = ColorTween(begin: Colors.white, end: Colors.lightBlue)
        .animate(_animationController);
    _colorTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _homeTween = ColorTween(begin: Colors.white, end: Colors.blue)
        .animate(_animationController);
    _yogaTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _textAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 0));
    super.initState();
  }

  bool scrollListner(ScrollNotification scrollNotification) {
    bool scroll = false;

    if (scrollNotification.metrics.axis == Axis.vertical) {
      _animationController.animateTo(scrollNotification.metrics.pixels / 80);
      _textAnimationController.animateTo(scrollNotification.metrics.pixels);
      return scroll = true;
    }

    return scroll;
  }

  String url2 =
      'https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8dW5rbm93biUyMHByb2ZpbGUlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D';
  String url =
      'https://media.istockphoto.com/id/1463708765/photo/back-view-of-athletic-woman-meditating-on-the-beach-at-sunset.jpg?s=2048x2048&w=is&k=20&c=If-LWhc_juPI8JXiVZSz_3wLa-athbTaD3Qjv6L4I2E=';
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CachedNetworkImage(
                    imageUrl: url2,
                    imageBuilder: (context, image) {
                      return Container(
                        alignment: Alignment.bottomLeft,
                        height: 250,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: image, fit: BoxFit.cover)),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: text(
                              'Heading', 25, FontWeight.bold, Colors.white),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    title: text('Home', 22, FontWeight.bold, Colors.black),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.notifications,
                      color: Colors.black,
                    ),
                    title:
                        text('Notification', 22, FontWeight.bold, Colors.black),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.help,
                      color: Colors.black,
                    ),
                    title: text('Help', 22, FontWeight.bold, Colors.black),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.privacy_tip,
                      color: Colors.black,
                    ),
                    title: text(
                        'privacy & pollacy', 22, FontWeight.bold, Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          // leading: Icon(Icons.menu, color: Colors.black,),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              ),
            ),
            CachedNetworkImage(
              imageUrl:
                  'https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8dW5rbm93biUyMHByb2ZpbGUlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D',
              imageBuilder: (context, imageProvider) {
                return InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: imageProvider, fit: BoxFit.fill)),
                    ),
                  ),
                );
              },
            )
          ],
          backgroundColor: Colors.blue,
          title: text('Home Yoga', 25, FontWeight.w900, Colors.white),
        ),
        body: SafeArea(
            child: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).height,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                    right: 60,
                    left: 60,
                  ),
                  child: Container(
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            text('1', 18, FontWeight.w600, Colors.white),
                            text('Streak', 18, FontWeight.w600, Colors.white),
                          ],
                        ),
                        Column(
                          children: [
                            text('120', 18, FontWeight.w600, Colors.white),
                            text('KCal', 18, FontWeight.w600, Colors.white),
                          ],
                        ),
                        Column(
                          children: [
                            text('26', 18, FontWeight.w600, Colors.white),
                            text('Minutes', 18, FontWeight.w600, Colors.white),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Container(),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                height: 685,
                color: Colors.white12,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 20.0, left: 20, top: 10, bottom: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text('Yoga for all', 20, FontWeight.w700,
                                    themeData.lightColorScheme.primary),
                                const SizedBox(
                                  height: 10,
                                ),
                                CachedNetworkImage(
                                  imageUrl: url,
                                  imageBuilder: (context, imageProvider) {
                                    return InkWell( 
                                      onTap: (){
                                     
                                     Navigator.push(context, MaterialPageRoute(builder: ((context) => const StartPage())));
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 200,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                              image: imageProvider,
                                              fit: BoxFit.fill),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              text(
                                                  'Yoga For Beginers',
                                                  22,
                                                  FontWeight.bold,
                                                  Colors.white),
                                              text(
                                                  'Lust Tue 1Pm',
                                                  14,
                                                  FontWeight.bold,
                                                  Colors.white),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                CachedNetworkImage(
                                  imageUrl:
                                      'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D',
                                  imageBuilder: (context, imageProvider) {
                                    return Container(
                                      width: double.infinity,
                                      height: 250,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.fill),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            text('Weight Less Yoga', 22,
                                                FontWeight.bold, Colors.white),
                                            text('Lust Tue 1Pm', 14,
                                                FontWeight.bold, Colors.white),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ]),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text('Choose Your Type', 20, FontWeight.w700,
                                    themeData.lightColorScheme.primary),
                                const SizedBox(
                                  height: 10,
                                ),
                                CachedNetworkImage(
                                  imageUrl:
                                      'https://images.unsplash.com/photo-1593810451137-5dc55105dace?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8fHw%3D',
                                  imageBuilder: (context, imageProvider) {
                                    return Container(
                                      width: double.infinity,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.fill),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            text('Suryanamaskar', 22,
                                                FontWeight.bold, Colors.white),
                                            text('Lust Tue 1Pm', 14,
                                                FontWeight.bold, Colors.white),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                CachedNetworkImage(
                                  imageUrl:
                                      'https://images.unsplash.com/photo-1545389336-cf090694435e?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTJ8fHxlbnwwfHx8fHw%3D',
                                  imageBuilder: (context, imageProvider) {
                                    return Container(
                                      width: double.infinity,
                                      height: 400,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.fill),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            text('Power Yoga', 22,
                                                FontWeight.bold, Colors.white),
                                            text('Lust Tue 1Pm', 14,
                                                FontWeight.bold, Colors.white),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                CachedNetworkImage(
                                  imageUrl:
                                      'https://images.unsplash.com/photo-1566501206188-5dd0cf160a0e?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTN8fHxlbnwwfHx8fHw%3D',
                                  imageBuilder: (context, imageProvider) {
                                    return Container(
                                      width: double.infinity,
                                      height: 600,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.fill),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            text('Practice Yoga', 22,
                                                FontWeight.bold, Colors.white),
                                            text('Lust Tue 1Pm', 14,
                                                FontWeight.bold, Colors.white),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                CachedNetworkImage(
                                  imageUrl:
                                      'https://images.unsplash.com/photo-1602276507500-600178f63aae?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTA0fHx8ZW58MHx8fHx8',
                                  imageBuilder: (context, imageProvider) {
                                    return Container(
                                      width: double.infinity,
                                      height: 300,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.fill),
                                      ),
                                    );
                                  },
                                ),
                              ]),
                        ]),
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
