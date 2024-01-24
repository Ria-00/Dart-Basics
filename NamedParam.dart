void main(){
  // print(sum(5,7));
  sayHello(); //null is passed
  sayHello(name:null);
  // sayHey(name: null);  //error

}

// arrow functions
int sum(int x,int y)=> (x+y);

// Named Parameters
// Ordering doesn't matter
// Either null allow or default value has to be there

// void sayHello({String name}) // error

// Accepts null value
void sayHello({String? name}){
  print("Hello $name");
}

// doesn't accept null value
void sayHey({String name='Orio'}){
  print('heyy $name');
}

// can have null, default value
void sayHi({String? name='Orio'}){
  print('hi $name');
}

void sayjk({String? name='Orio'}){
  print('hi $name');
}



