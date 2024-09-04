import 'package:flutter/material.dart';

class DataAddProvider extends ChangeNotifier {
  TextEditingController data = TextEditingController();
  TextEditingController updateText = TextEditingController();
  List storeData = [];

  void dataAdd() {
    storeData.add(data.text);
    data.clear();
    notifyListeners();
  }

  void removeData(int index) {
    storeData.removeAt(index);
    notifyListeners();
  }

  void updateData(int index) {
    storeData[index] = updateText.text;
    notifyListeners();
  }
}
