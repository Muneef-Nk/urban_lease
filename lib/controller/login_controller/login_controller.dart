import 'package:flutter/material.dart';

class LoginScreenController with ChangeNotifier {
  bool isLogin = true;
  changeLogin() {
    isLogin = !isLogin;

    notifyListeners();
  }
}
