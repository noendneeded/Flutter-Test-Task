import 'package:flutter/material.dart';
import 'check_model.dart';

class CheckPageProvider extends ChangeNotifier {
  CheckPageProvider({required this.context});

  BuildContext context;

  final _model = <CheckPageModel>[
    CheckPageModel('gmail.com', false),
    CheckPageModel('yandex.ru', false),
    CheckPageModel('mail.ru', false),
    CheckPageModel('yahoo.ru', false),
    CheckPageModel('vk.com', false),
  ];

  String address(int index) {
    return _model[index].address;
  }

  bool isChecked(int index) {
    return _model[index].isChecked;
  }

  int? length() {
    return _model.length;
  }

  void change(int index) {
    _model[index].isChecked = !_model[index].isChecked;
    notifyListeners();
  }
}
