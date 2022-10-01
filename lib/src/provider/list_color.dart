import 'package:flutter/material.dart';

class ColorList {}

class ButtonColor extends ChangeNotifier {
  ColorList colorList = ColorList();

  void setSelectedIndex(int index) {
    notifyListeners();
  }
}
