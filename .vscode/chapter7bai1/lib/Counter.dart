import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _count = 0;
  List<int> _history = [];

  int get count => _count;
  List<int> get history => _history;

  void increment() {
    _count++;
    _history.add(_count);
    notifyListeners();
  }
}
