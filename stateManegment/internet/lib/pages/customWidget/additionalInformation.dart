

import 'package:flutter/material.dart';
import 'package:internet/pages/customWidget/currentWeather.dart';

Widget AdditionalInformation (String wind, String humidty, String pressure, String fells_like) {
  return Container(
    width: double.infinity, 
    padding: EdgeInsets.all(18.0), 
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center, 
      crossAxisAlignment: CrossAxisAlignment.center, 
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start, 
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                     Row(
                       children: [
                         text('Wind', Colors.black, FontWeight.w700, 22), 
                         SizedBox(width: 70,),
                          text(wind, Colors.black, FontWeight.w400, 18),
                       ],
                     ), 
                     const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          text('Humidty', Colors.black, FontWeight.w700, 22), 
                          const SizedBox(
                            width: 40,
                          ),
                          text(humidty, Colors.black, FontWeight.w400, 18),
                        ],
                      ), 
                      
                ],
              ),

              

               Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          text('Pressure', Colors.black, FontWeight.w700, 22), 
                          const SizedBox(
                            width: 40,
                          ),
                          text(pressure, Colors.black, FontWeight.w400, 18),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          text('Fells Like', Colors.black, FontWeight.w700, 22), 
                          const SizedBox(
                            width: 40,
                          ),
                          text(fells_like, Colors.black, FontWeight.w400, 18),
                        ],
                      ),
                    ],
                  ),
              
              ],
            ),
        ),
      ])
  );
}


