import 'dart:io';

void main(){
  print("Heyy");

  // Variable Declaration
  int x=66;
  print(x);

  print('Value of x is $x');  //Interpolation

  print('Value of x is $x+y'); 

  //throws compile time error while printing since value isn't assigned
  // int value;  
  int? value; //null safety feature
  print(value); 

  String address='''
  ejff
  wijef
  irewgorg
  ''';
  print(address);

  print(address.runtimeType);

  //type inferencing
  var a=22; 
  print(a.runtimeType);

  // a='fun'; // raise error as already value assigned


  // Dynamic allows to re-assign datatype unlike var.
  dynamic c;
  c='Hahaha';
  print(c.runtimeType);
  c=12;
  print(c.runtimeType);

  // User Input from console
  print("Enter your Name:");

  //error arised since null can also be stored in name
  // String name=stdin.readLineSync(); 
  String? name=stdin.readLineSync();

  // STRING -> INT
  print("Enter your Age:");
  String? age1=stdin.readLineSync();
  int age=int.parse(age1.toString());

  print('Name is $name'+'\n'+'Age is $age');

  // INT -> STRING
  int val=stdin.readByteSync();
  print(val.toString());

  // ERROR( String+int = error)
  // print(val+' ');


  //num can take both decimal and normal values
  num d = 100;
  num d1 = 100.69;
  print(d+d1);

  



}



