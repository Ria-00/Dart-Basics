void main(){
  myclass obj=new myclass();
  print(obj.method());
}

class myclass with Amix,Bmix{
  // String method()=> super.method();
}

mixin Amix{
  String method()=>'String A';
}

mixin Bmix{
  String method()=>'String B';
}