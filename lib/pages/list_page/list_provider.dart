import 'package:flutter/material.dart';
import 'package:flutter_test_edited/pages/list_page/list_model.dart';

class ListPageProvider extends ChangeNotifier {
  ListPageProvider({required this.context});

  BuildContext context;

  final _model = <ListPageModel>[
    ListPageModel('Alex', 20),
    ListPageModel('John', 35),
    ListPageModel('Brian', 27),
    ListPageModel('Jessy', 15),
  ];

  get model => _model;

  int length() {
    return _model.length;
  }

  String name(int index) {
    return _model[index].name;
  }

  int age(int index) {
    return _model[index].age;
  }
}
