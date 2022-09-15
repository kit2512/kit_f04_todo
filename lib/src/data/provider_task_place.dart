import 'package:flutter/material.dart';

class ProviderTaskPlace extends ChangeNotifier {
  String place = "";
  void setPlace(String value) {
    place = value;
    notifyListeners();
  }
}