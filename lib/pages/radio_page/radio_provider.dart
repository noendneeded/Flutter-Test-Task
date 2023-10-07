import 'package:flutter/material.dart';

class RadioPageProvider extends ChangeNotifier {
  RadioPageProvider({required this.context});

  BuildContext context;

  final _model = ['Red', 'Green', 'Blue', 'White', 'Black'];
  String choosen = "";

  get model => _model;

  int length() {
    return _model.length;
  }

  String color(int index) {
    return _model[index];
  }

  String getChoosen() {
    return choosen;
  }

  void setChoosen(String value) {
    choosen = value;
    notifyListeners();
  }
}
