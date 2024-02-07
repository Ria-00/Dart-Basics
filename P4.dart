import 'dart:io';

class ShoppingCart{

  Map<String,int>? cart;
  ShoppingCart(): cart={};

  Map<String,int> Inventory={'Eggs':30,'Milk':20,'Bread':10,'Apple':50,'Banana':40};
  Map<String,int> price={'Eggs':5,'Milk':10,'Bread':20,'Apple':10,'Banana':5};
  Map<String,int> discount={'Eggs':5,'Milk':10,'Bread':2,'Apple':5,'Banana':3};

  void addItem(){
    print(Inventory);
    print("Enter the item & quantity:");
    String item=stdin.readLineSync()!;
    int qty=int.parse(stdin.readLineSync()!);
    cart![item]=qty;
    Inventory[item]=Inventory[item]!-qty;
    print(cart);
  }

  void removeItem(){
    if (cart!.isEmpty) {
      print('Cart is empty');
      return;
    }
    print(cart);
    print("Enter the item & quantity:");
    String item=stdin.readLineSync()!;
    int qty=int.parse(stdin.readLineSync()!);
    if (!cart!.containsKey(item)) {
      print("No such item");
      return;
    }
    Inventory[item]=Inventory[item]!+qty;
    if (cart![item]==0) {
      cart!.remove(item);
    }
    else{
      cart![item]=cart![item]!-qty;
    }
    print(cart);
  }

  void totalPrice(){
    double totalPrice=0;
    if (cart!.isEmpty) {
      print('Cart is empty\nTotal Price:0');
      return;
    }
    for (String ele in cart!.keys) {
      int p=cart![ele]!*price[ele]!;
      totalPrice+=p-(p*(discount[ele]!/100));
    }
    print('Total Price:${totalPrice}');
  }

}

void main(){
  ShoppingCart c=new ShoppingCart();
  String? y='y';
  do {
    print("1: Add Item\n2: Remove Item\n3: Total Price\n");
    int i=int.parse(stdin.readLineSync()!);
    if (i==1) {
      c.addItem();
    } else if(i==2) {
      c.removeItem();
    }
    else if(i==3){
      c.totalPrice();
    }
    else{
      print('Wrong Choice');
    }
    print('Enter y to continue');
    y=stdin.readLineSync();
  } while (y=='y');
  
  
}