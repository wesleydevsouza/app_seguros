import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class LoginViewModel extends ChangeNotifier {
  final AuthService _authService = AuthService();

  bool isLoading = false;
  String? errorMessage;

  Future<bool> login({required String email, required String password}) async {
    isLoading = true;
    notifyListeners();
    final result = await _authService.login(email: email, password: password);
    isLoading = false;
    errorMessage = result.errorMessage;
    notifyListeners();
    return result.success;
  }

  Future<bool> register(
      {required String email, required String password}) async {
    isLoading = true;
    notifyListeners();
    final result =
        await _authService.register(email: email, password: password);
    isLoading = false;
    errorMessage = result.errorMessage;
    notifyListeners();
    return result.success;
  }
}
