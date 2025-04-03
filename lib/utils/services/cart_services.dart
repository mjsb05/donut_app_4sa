import 'package:flutter/foundation.dart';

class CartService extends ChangeNotifier {
  int _counter = 0;
  double _total = 0.0;

  int get counter => _counter;
  double get total => _total;

  void addToCart(double price) {
    _counter++;
    _total += price;
    notifyListeners();
  }
}
