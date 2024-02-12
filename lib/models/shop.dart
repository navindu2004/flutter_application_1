import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    //product 1
    Product(
      name: "Spicy Arabian Kebab",
      price: 15.99,
      description:
          "Try out our Spicy and delicious Arabian style Chicken/Beef Kebab",
      imagePath: 'assets/1620411004214.jpeg',
    ),
    //product 2
    Product(
        name: "Biriyani",
        price: 55.99,
        description:
            "Fragrant rice dish layered with spices, meat, or vegetables, popular in Arabian cuisine.",
        imagePath: 'assets/29a250fef4c1e5190dc14da037ca751f.jpg'),
    //product 3
    Product(
        name: "Arabian Style Shawarma (Chicken)",
        price: 45.99,
        description:
            "Middle Eastern wrap filled with seasoned meat, veggies, and sauce, bursting with flavor.",
        imagePath:
            'assets/shawarma-sandwich-isolated-on-transparent-background-png.webp'),
    //product 4
    Product(
        name: "Fattoush",
        price: 35.99,
        description:
            "A tangy Middle Eastern salad with mixed greens, vegetables, herbs, and crispy pita chips",
        imagePath: 'assets/WGC-Summer-Stone-Fruit-Fattoush-2-copy.jpg'),
  ];

  //user cart
  final List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  //add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
