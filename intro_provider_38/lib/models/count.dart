import 'package:flutter/material.dart';

class CountModel with ChangeNotifier {
  int value = 0;
  void increment() {
    value++;
    notifyListeners();
  }
   void decrement() {
    value--;
    notifyListeners();
  }
  

}
