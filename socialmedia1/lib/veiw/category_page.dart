import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialmedia1/const/app_color.dart';
import 'package:socialmedia1/service/session_service.dart';
import 'package:socialmedia1/veiw/friend_details_page.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final DatabaseReference database = FirebaseDatabase.instance.ref('usser');
  final uid = SessionController().userId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        
        title: Text(
          'Friend List',
           style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Colors.white),
        ),
        elevation: 0,
       backgroundColor: AppColors.primaryButtonColor,
      ),
      body: FirebaseAnimatedList(
        query: database,
        itemBuilder: ((context, snapshot, animation, index) {
          if (snapshot.value == null) {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.primaryColor,),
            );
          }else{ 
            if (snapshot.child('uid').value.toString() == uid.toString()) {
              return Container();
            } else {
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 15.0, left: 15, top: 10),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Card( 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      elevation: 3,
                      shadowColor: AppColors.primaryColor,
                      child: ListTile( 
                        tileColor: AppColors.grayColor,
                          onTap: () {
                            Get.to(() => FriendDetailsePage(
                                  userId: snapshot.child('uid').value,
                                ));
                          },
                          leading: snapshot.child('image').value == null
                              ? const CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                      AssetImage('assets/images/person.png'),
                                )
                              : CircleAvatar(
                                  radius: 25,
                                  backgroundImage: NetworkImage(
                                      snapshot.child('image').value.toString()),
                                ),
                          title: Text(
                            snapshot.child('name').value.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(fontSize: 21),
                          ), 
                          subtitle: Text(snapshot.child('email').value.toString()),),
                    ),
                  ), 
                ),
              );
            }
          }
        }),
      ),
    );
  }
}
