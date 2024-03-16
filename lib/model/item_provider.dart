import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ItemProvider with ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  double _totalPrice = 0.0;
  double get totalPrice => _totalPrice;

  void _setPrefItem() async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    preference.setInt('item_counter', _counter);
    preference.setDouble('item_price', _totalPrice);
    notifyListeners();
  }

  void _getPrefItem() async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    _counter = preference.getInt('item_counter') ?? 0;
    _totalPrice = preference.getDouble('item_price') ?? 0;
    notifyListeners();
  }

  void addCounter() {
    _counter++;
    _setPrefItem();
    notifyListeners();
  }

  void removeCounter() {
    _counter--;
    _setPrefItem();
    notifyListeners();
  }

  int getCounter() {
    _getPrefItem();
    return _counter;
  }

  void addTotalPrice(double productPrice) {
    _totalPrice = _totalPrice + productPrice;
    _setPrefItem();
    notifyListeners();
  }

  void removeTotalPrice(double productPrice) {
    _totalPrice = _totalPrice - productPrice;
    _setPrefItem();
    notifyListeners();
  }

  double getTotalPrice() {
    _getPrefItem();
    return _totalPrice;
  }
}
