import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
              color: Colors.white,
              size: 25,
            )),
        backgroundColor: Colors.purple, 
        elevation: 20,
        //centerTitle: true,
        title: const Text('Home',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            )),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 9.0),
            child: Icon(Icons.info,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.settings,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child: Container( 
          alignment: Alignment.center,
          height: MediaQuery.sizeOf(context).height / 5,
          width: MediaQuery.sizeOf(context).width / 2,
          decoration: const BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40), bottomLeft: Radius.circular(40)),
          ),
          child: const Text('Hello Devlopers',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
