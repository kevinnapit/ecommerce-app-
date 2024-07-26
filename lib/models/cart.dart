import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'ZOOM FREAK',
        price: '236',
        description: 'The forward-thinking design of his latest signature shoe',
        imagePath: 'lib/images/NikeBlack.jpeg'),
    Shoe(
        name: 'Nike Blue',
        price: '200',
        description:
            'You\'ve got the hops and the speed-lace up in shoes that enhace cool',
        imagePath: 'lib/images/Nike blue Lagoon.jpeg'),
    Shoe(
        name: 'Perian',
        price: '202',
        description: 'Design Elegant with Perian Violet',
        imagePath: 'lib/images/Nike Perian Violet.jpeg'),
    Shoe(
        name: 'Dove',
        price: '203',
        description: 'Like Dove always Give a hope',
        imagePath: 'lib/images/Nike Dove Grey.jpeg')
  ];
  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // romove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
