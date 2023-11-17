
import 'dart:io';



void main(){

  double number = 123;
 // num ans = 0;
 print(number);
// int ten = 10;
  int counter = 0;

  while( number >= 1){
    counter++;
    print(counter);
    print(number);

    number /= 10;
  }
  print(counter);



return;
}

