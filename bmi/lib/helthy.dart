import 'package:flutter/material.dart';

class Helthy extends StatelessWidget {
  const Helthy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child:  Center(child: Column(children: [
           Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(
                                Icons.arrow_back,
                                size: 25,
                                color: Colors.black54,
                              )),
                        )
                      ],
                    ),
          const SizedBox(height: 50,),

            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset('images/images2.png'),
            ),
            const Text('HELTHY', style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: Colors.green,
            ),),
            const SizedBox(height: 100,),

            Text('Discription', style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.green.shade200,
            ),),
            const SizedBox(height: 5,),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Health is a state of complete physical, mental, and social well-being and not merely the absence of disease or infirmity.',
               style: TextStyle(fontSize: 14, ),),
            ),
        ]
      ),
        )))  );
  }
}
