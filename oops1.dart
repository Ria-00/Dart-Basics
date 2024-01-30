void main(){
  final person1=Person(name:'Jake',age: 25);
  // print(person1.name);
  // print(person1.age);
  // print(person1);
  // print(person1.toString());

  Employee emp=Employee();
  print(emp);

  Employee emp4=Employee.empCustom4(null, null);
  print(emp4.name);

  Employee emp1=Employee.empCustom2(1,'Jake',email: 'jake@gmail.com',salary: 1000.0);
  print(emp1.email);
} 

class Person{
  String? name;
  int? age;

// 1. Default Constructor
  // Person({required name, required age}){
  //   this.name = name;
  //   this.age = age;
  // }

  // 2.
  // Person({required this.name, required this.age});

  // 3.
  Person({required name, required age}): this.name = name, this.age = age;

  String toString(){
    return 'Name: $name, Age: $age';
  }
}

class Employee {
  // For private property use '_' before the property name i.e. _name
  int? _id;
  String? _name;
  double? _salary;
  String? _email;
  String? _address;
  String? _phone;
  
 int? get id => this._id;

 set id(int? value) => this._id = value;

  get name => this._name;

 set name( value) => this._name = value;

  get salary => this._salary;

 set salary( value) => this._salary = value;

  get email => this._email;

 set email( value) => this._email = value;

  get address => this._address;

 set address( value) => this._address = value;

  get phone => this._phone;

 set phone( value) => this._phone = value;

// In dart One name = 1 constructor(same name constructor as class name only one)
//  1. Default Constructor
Employee(){
  print("Object Initialized");
}

// 2. Named Constructor: with block body
Employee.empCustom(int id, String name, double salary, String email, String address, String phone){
  this._id = id;
  this._name = name;
  this._salary = salary;
  this._email = email;
  this._address = address;
  this._phone = phone;
}

// Without block body
Employee.empCustom1(int id, String name, double salary, String email, String address, String phone){}

Employee.empCustom2(this._id,this._name,{String? email, double? salary}){}

Employee.empCustom3(this._id,this._name,[String? email, double? salary]){}

 
// Default value constructor '??'
Employee.empCustom4(String? name, int? id){
  this._id = id ?? 11;
  this._name = name ?? 'jake';
}

}