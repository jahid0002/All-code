
import 'dart:io';

void main(){

// men human = men();
 //human.func(123, "jahid");
 BadClass women = BadClass();
 //women.method();
 women.func(123, 'Jahid');
}

class men{

  var rollNo;
  var name;

   /* men(var roll, var s){
    this.rollNo = roll;
    this.name = s;
  }
     */

  void func(var roll, var s){
     print(roll);
     print(s);
  }


}

class BadClass extends men{
       var nam;
  }
