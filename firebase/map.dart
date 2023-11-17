import 'dart:io';

void main(){

  Map<String, dynamic> map = {'name': 'Country', 'data':<String,String> {
    'name':'Bangladesh',
    'polulation': '20 Core',
    'prime-minister':'Shekh Hasina'
  }};

// Q no 1:
  print(map['data']['prime-minister']);

  print(map);

  //Q no 2:
  map['data'].removeWhere((key,  value) => value == 'Bangladesh');

  print(map);

  //Q no 3
  map['data']['polulation'] = '30 Core';
  print(map);
  //Q no 4:
  Number no = Number.one;

  switch(no){
    case Number.one:
      print('One');
      break;
    case Number.two:
      print('Two');
      break;
    case Number.three:
      print('Three');
      break;
    case Number.four:
      print('Four');

  }

}


enum Number {one, two, three, four}