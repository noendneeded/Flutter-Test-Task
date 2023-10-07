import 'package:flutter/material.dart';
import 'package:flutter_test_edited/pages/login_page/login_model.dart';
import 'package:go_router/go_router.dart';

class LoginPageProvider extends ChangeNotifier {
  LoginPageProvider({required this.context});

  BuildContext context;
  final _model = LoginPageModel();
  final formKey = GlobalKey<FormState>();
  get form => formKey.currentState;

  void saveEmail(String? value) {
    if (value != null) {
      _model.email = value;
    } else {
      return;
    }
    notifyListeners();
  }

  String? validateEmail(String? value) {
    notifyListeners();
    return value == null || !value.contains("@") ? 'Invalid email' : null;
  }

  String? validatePassword(String? value) {
    notifyListeners();
    return value == null ? 'Password cannot be empty' : null;
  }

  void savePassword(String? value) {
    if (value != null) {
      _model.password = value;
    }
    notifyListeners();
  }

  void check() {
    if (form!.validate()) {
      form!.save();
      if (_model.email == "admin@admin" && _model.password == "admin") {
        performLogin();
      }
    }
  }

  void performLogin() {
    GoRouter.of(context).go('/list');
  }
}
