import 'package:class18/page/home/home_controller.dart';
import 'package:class18/page/put/put_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Home',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: Colors.white),
          ),
        ),
        body: GetBuilder<HomeController>(
          builder: (contrller) {
            if (controller.loading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 15, top: 15),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.dataList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            onTap: () {
                              Get.to(()=>PutPage(avater: contrller.dataList[index].avatar
                                        .toString(), name:  controller.dataList[index].firstName
                                        .toString(), index:  index,));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            tileColor: Colors.green.shade100,
                            title: Text(
                              controller.dataList[index].firstName.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(color: Colors.black),
                            ),
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  contrller.dataList[index].avatar.toString()),
                            ),
                            subtitle: Text(
                                contrller.dataList[index].email.toString()),
                            trailing:
                                const Icon(Icons.arrow_forward_ios, size: 16),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          )
                        ],
                      );
                    }),
              );
            }
          },
        ));
  }
}
