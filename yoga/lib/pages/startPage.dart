import 'package:flutter/material.dart';
import 'package:yoga/pages/rYoyReadyPage.dart';
import 'package:yoga/widget/widget.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  Color color = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      floatingActionButton: InkWell( 
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: ((context) => const ReadyPage())));
        },
        child: Container( 
          alignment: Alignment.center,
          height: 45, 
          width: 120, 
          decoration: BoxDecoration(
            color: Colors.blue, 
            borderRadius: BorderRadius.circular(15),
          ), 
          child: text('Start Now', 22, FontWeight.bold, Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        // physics: AlwaysScrollableScrollPhysics(parent: ScrollPhysics()),
        slivers: [
          SliverAppBar( 
            actions: const [
               Padding(
                padding: EdgeInsets.only(right: 18.0),
                child: Icon(Icons.info, size: 30, color: Colors.white),
              ),
            ],
              backgroundColor: Colors.blue,
              expandedHeight: 300,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: text(
                    'Yoga For Beginers', 20, FontWeight.bold, Colors.white),
                background: Image.network(
                  'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8eW9nYXxlbnwwfHwwfHx8MA%3D%3D',
                  fit: BoxFit.cover,
                ),
              )),
          SliverToBoxAdapter(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: text('16 minutes || 26 Workouts', 20,
                        FontWeight.w300, Colors.black),
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.blue,
                    endIndent: 20,
                    indent: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20.0,
                      left: 20,
                    ),
                    child: ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return const Divider(
                            thickness: 1,
                            color: Colors.blue,
                          );
                        },
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Image.network('https://media.istockphoto.com/id/1459538299/photo/woman-hands-or-lotus-pose-meditation-on-sunset-beach-ocean-or-sea-in-mental-health-mind.webp?s=2048x2048&w=is&k=20&c=p1Cr95TDyty1gVCVZlDJJT5_COOe1gADnIKaSjCDlHA=', width: 70, height: 70,),
                              onFocusChange: (value) {
                                void Onfocas() {
                                 color = Colors.blue;
                                }
                              },
                              title: text('Yoga ${index + 1}', 20,
                                  FontWeight.w400, color));
                        },
                        itemCount: 20),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
