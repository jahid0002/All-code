
import 'package:flutter/material.dart';
import 'package:internet/pages/customWidget/additionalInformation.dart';
import 'package:internet/pages/customWidget/currentWeather.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Color(0xffe2ebf0),
      appBar: AppBar(
         backgroundColor: Color(0xffe2ebf0),
        elevation: 0.0, 
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: Colors.black,),),
        centerTitle: true,
        title:  const Column(
          children: [ 
            SizedBox(height: 15),
            Text(
              'Weather App',
              style: TextStyle(
                  fontSize: 22, color: Colors.black, fontWeight: FontWeight.w800),
            ),
          ],
        ),
       
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40,),
          CurrentWeather(Icons.wb_sunny_rounded, '26.3', 'dinajpur'), 
          const SizedBox(height: 50), 

         text('Additional Information', Colors.black, FontWeight.w700, 24), 
         const Divider(), 
         const SizedBox(height: 20,), 
         AdditionalInformation('24', '1014', '2', '24.6')

        ],
      )
    );
  }
}
