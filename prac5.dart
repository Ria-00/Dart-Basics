import 'dart:io';

void main(){
  // int a=int.parse(stdin.readLineSync()!);
  // int b=int.parse(stdin.readLineSync()!);
  // Map<String,Function> math=getMathFunction();
  // print("Sum $math['add']!(a,b)");
  // print(math['sub']!(a,b));

  // Function f=factorial(a);
  // print(f(b));

  List<int> list=[1,2,3,4,5,6,7];
  List<int> process=processNo(list,mapper(),filter());
  print(process);

  // List<int> l1=filterList(list,filter());
  // print(l1);

  // Function fib=fibonacci();
  // print(fib(a));

}

Map<String,Function> getMathFunction(){

  int add(int a,int b){
    return a+b;
  }
  int sub(int a,int b){
    return a-b;
  }
  int mul(int a,int b){
    return a*b;
  }
  int div(int a,int b){
    return a~/b;
  }
  return {
    'add':add,
    'sub':sub,
    'mul':mul,
    'div':div
  };
}

Function factorial(int n){
  int f=1;

  int fact(int x){
    if (x<=1||x<=n) {
      return 1;
    }
    else{
      return fact(x-1)*x;
    }
  }

  return fact;
}

List<int> filterList(List<int> l,Function f){
  List<int> li=[];
  for (int i in l) {
    if(f(i)){
      li.add(i);
    }
  }
  return li;

}

Function filter(){

  bool filterOdd(int x){
    if (x%2==0) {
      return false;
    }
    else{
      return true;
    }
  };

  return filterOdd;
}

Function fibonacci(){
  
  int fibo(int n){
    if (n==0) {
      return 0;
    }
    else if(n==1){
      return 1;
    }
    else{
      return fibo(n-1)+fibo(n-2);
    }
  }
  return fibo;
}

Function mapper(){

  int add1(int x){
    return x+1;
  }
  return add1;
}

List<int> processNo(List<int> l,Function f, Function g){
  List<int> li=[];
  for (int i in l) {
    int a=f(i);
    if (g(a)) {
      li.add(a);
    }
  }
  return li;
}