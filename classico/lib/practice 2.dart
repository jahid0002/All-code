
import 'dart:io';

void main(){

  print('Emter the first value: ');
  int x = int.parse(stdin.readLineSync()!);
  print('Enter the second value: ');
  int y = int.parse(stdin.readLineSync()!);

  func(x, y);

  var a;
  a = 100;
  display(a);

  a = 3.1416;
  display(a);

  a = "jahid";
  display(a);

  a = "#---++!!@@";
  display(a);




  return;
}

void func(int x, int y){
  int sum = x + y;

  print('Summation $sum');

  return;
}

void display(var b){
  print(b);
}