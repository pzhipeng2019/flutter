import 'package:flutter/material.dart';

class CountModel with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  void add() {
    _count++;
    notifyListeners();
  }
}
