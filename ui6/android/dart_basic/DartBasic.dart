import 'dart:io';


void main(){

  List<List<List>>list = [
   [ ['Shakib', 30],
     ['Rakib', 40],
    ],
    [
      ['Nazmul', '30'],
      ['Nipa', '24'],
      ['Sajib', 70],
    ]
  ];

  print(list[0][1][1]);
  print(list[1][1][0]);

  return;

}