import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(name: 'Zoomx', price: '2300', imagePath: 'assets/zoomx.png', description: 'Cool kicks'),
    Shoe(name: 'Pegasus', price: '3000', imagePath: 'assets/pegasus.png', description: 'Hot Kicks'),
    Shoe(name: 'Kill Shot', price: '4000', imagePath: 'assets/killshot.png', description: 'Trendy Shoe'),
    Shoe(name: 'Dunks', price: '5000', imagePath: 'assets/dunk.png', description: 'Top kicks'),

  ];


  //list of items in user cart
  List<Shoe> userCart = [];
   

  //get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  //get cart 
  List<Shoe> getUserCart(){
    return userCart;
  }

  //add items from cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();

  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}