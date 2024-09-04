import 'package:flutter/cupertino.dart';

class IncrementProvider extends ChangeNotifier {
  int counter = 0;
  void increment() {
    counter++;
    notifyListeners();
  }
}
