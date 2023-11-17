import 'dart:io';

import 'package:flutter/material.dart';
import 'package:profile/page/changeImage.dart';

import 'package:profile/page/editPage.dart';
import 'package:profile/provider/profileProvider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xffa8edea), Color(0xfffed6e3)])),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.topRight,
              height: 40,
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditPage()));
                  },
                  icon: Icon(
                    Icons.edit,
                    size: 25,
                    color: Colors.blue.shade400,
                  ),
                ),
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Padding(
                  padding:  EdgeInsets.only(left: 80.0),
                  child: Consumer<ProfileProvider>(
                      builder: (contex, provider, child) {
                   
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onDoubleTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  ChangeImage()));
                                  },
                                  child: provider.isCompleted?
                                    CircleAvatar(
                                    backgroundImage: 
                                    FileImage(File(provider.imagePath!)),
                                    radius: 80,
                                  )

                                  : const CircleAvatar(
                                    backgroundImage: 
                                       AssetImage('images/image.png'),
                                    radius: 80,
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Column(                                             
                                  children: [
                                   
                                         Text(
                                            '${provider.name}',
                                            style: const TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                        
                                    Text(
                                            '${provider.profation}',
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black54,
                                            ),
                                          ),
                                       
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 80,
                            ),
                            Row(
                              children: [
                             Icon(
                                  Icons.school,
                                  size: 25,color: Colors.blue.shade300,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                        '${provider.varcity}',
                                        style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black,
                                        ),
                                      ),
                                   
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                             Row(
                              children: [
                                Icon(
                                  Icons.work,
                                  size: 25,
                              color: Colors.blue.shade300,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text(
                                  'Project',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_city,
                                  size: 25,
                              color: Colors.blue.shade300,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                     Text(
                                        '${provider.location}',
                                        style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black,
                                        ),
                                      ),
                                 
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                 Icon(
                                  Icons.email,
                                  size: 25,
                              color: Colors.blue.shade300,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                             Text(
                                        '${provider.gmail}',
                                        style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black,
                                        ),
                                      )
                                   
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                               Icon(
                                  Icons.phone_android,
                                  size: 25,
                              color: Colors.blue.shade300,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                               Text(
                                        '${provider.number}',
                                        style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black,
                                        ),
                                      )
                                  
                              ],
                            ),
                          ],
                        );
                    
                  })),
            ),
          ],
        ),
      )),
    );
  }
}
