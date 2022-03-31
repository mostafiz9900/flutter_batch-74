import 'package:flutter/cupertino.dart';

class Product extends ChangeNotifier {
  final int? id;
  final String? name;
  final double? price;

  Product({this.id, this.name, this.price});
  List<Product> products = [
    Product(id: 1, name: 'Lenove', price: 3330.099),
    Product(id: 2, name: 'Samsung', price: 3330.099),
  ];

  void addData(Product value) {
    products.add(value);
    print(value);
    notifyListeners();
  }
}
