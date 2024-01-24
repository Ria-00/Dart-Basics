void main(){
  intro('Rio', 9);
}

// Optional Arguments: Always at the end within square brackets
// [String? name]: null allowed
// [String name]='' : deafult value
// Optional Arguments position matters

dynamic intro(String? name,int age, [String? city]){
  print("I'm $name, $age years old from $city");
}

