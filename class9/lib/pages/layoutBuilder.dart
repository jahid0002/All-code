import 'package:flutter/material.dart';

class LayoutBuilders extends StatefulWidget {
  const LayoutBuilders({super.key});

  @override
  State<LayoutBuilders> createState() => _LayoutBuilderState();
}

class _LayoutBuilderState extends State<LayoutBuilders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'LayoutBuilder',
          style: TextStyle(
              fontSize: 22, color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 1000) {
              return const Center(child:  Text('This is laptop screan '));
            }else if(constraints.maxWidth>500){
              return const Center(child: Text('This is tap screan '));
            }else{
              return const Center(child: Text('This is mobile screan '));
          
            }
          },
        ),
      ), 
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        onPressed: (){}, child: Icon(Icons.next_plan, color: Colors.white)),
    );
  }
}
