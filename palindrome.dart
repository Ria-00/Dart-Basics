import 'dart:io';

void palindrome(String a){
  String b="";
  for (var i = a.length-1; i >=0; i--) {
    b+=a[i];
  }

  if (a==b) {
    print("True");
  }
  else{
    print("false");
  }
}

void main(){
  print("Enter a word:");
  String a=stdin.readLineSync()!;
  palindrome(a);
}