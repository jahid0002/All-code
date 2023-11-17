
  import 'dart:io';

main(){

  var student_map = Map();

  int? x;
  x = int.parse(stdin.readLineSync()!);

  String? s = stdin.readLineSync();

  print(s);
  print(x);

  student_map['Name'] = 'Jahid';
  student_map['Id'] = 1234;
  student_map['Divison'] = 'science';
  student_map['Class'] = 'Naine';

  print(student_map);
  print(student_map['Name']);
  print(student_map.length);
  print(student_map.entries);
  print(student_map.isEmpty);
  print(student_map.isNotEmpty);
  print(student_map.keys);
  print(student_map.values);
  print(student_map.runtimeType);
  print(student_map.clear);
  print(student_map.length);
  student_map.clear();
  print(student_map.length);


}