import 'package:flutter/material.dart';
import '../viewmodels/login_viewmodel.dart';

class AuthProvider extends ChangeNotifier {
  final LoginViewModel _loginViewModel = LoginViewModel();

  bool get isLoading => _loginViewModel.isLoading;
  String? get errorMessage => _loginViewModel.errorMessage;
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  Future<bool> login({required String email, required String password}) async {
    final result =
        await _loginViewModel.login(email: email, password: password);
    _isLoggedIn = result;
    notifyListeners();
    return result;
  }

  Future<bool> register(
      {required String email, required String password}) async {
    final result =
        await _loginViewModel.register(email: email, password: password);
    _isLoggedIn = result;
    notifyListeners();
    return result;
  }

  void logout() {
    _isLoggedIn = false;
    notifyListeners();
  }
}
