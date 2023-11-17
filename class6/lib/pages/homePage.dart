import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        actions: const [
          Icon(
            Icons.notification_add,
            size: 20,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.info,
              size: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 12.0,
          top: 20,
          right: 5,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 10),
          const Text(
            'Cetagory',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.teal,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: 200,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 195,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 195,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 195,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 195,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Favorite',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.teal,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: 200,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 195,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 195,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 195,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 195,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(flex: 3, child: Container(color: Colors.blueGrey)),
          Expanded(flex: 2, child: Container(color: Colors.blue)),
          Expanded(flex: 1, child: Container(color: Colors.grey)),
        ]),
      ),
      drawer: Drawer(
        
        backgroundColor: Colors.teal,
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            

            Container(height: 200,),

              const ListTile( 
                
                leading: Icon(Icons.home, color: Colors.white,size: 20), 
                title: Text('Home', style: TextStyle(
                  fontSize: 22, 
                  fontWeight: FontWeight.w500, 
                  color: Colors.white,
                ),),
              ),
               const ListTile(
                leading: Icon(Icons.help, color: Colors.white, size: 20),
                title: Text(
                  'Help',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
               const ListTile(
                leading: Icon(Icons.privacy_tip, color: Colors.white, size: 20),
                title: Text(
                  'Praivacy',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        )
        ), 
        bottomNavigationBar:  const Padding(
          padding: EdgeInsets.only(bottom:8.0, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Icon(Icons.edit, size: 25, color: Colors.teal), 
             Icon(Icons.favorite, size: 25, color: Colors.teal),
             Icon(Icons.sort, size: 25, color: Colors.teal),
             
             
          ]),
        ), 
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          onPressed: (){}, child: const Icon(Icons.add, color: Colors.white,),),
    );
  }
}
