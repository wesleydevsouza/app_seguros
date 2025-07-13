import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RememberLoginProvider extends ChangeNotifier {
  String? _rememberedEmail;
  bool _remember = false;

  String get rememberedEmail => _rememberedEmail ?? '';
  bool get remember => _remember;

  Future<void> loadRememberedEmail() async {
    final prefs = await SharedPreferences.getInstance();
    _rememberedEmail = prefs.getString('remembered_email') ?? '';
    _remember = prefs.getBool('remember_login') ?? false;
    notifyListeners();
  }

  Future<void> setRememberedEmail(String email, bool remember) async {
    final prefs = await SharedPreferences.getInstance();
    if (remember) {
      await prefs.setString('remembered_email', email);
      await prefs.setBool('remember_login', true);
      _rememberedEmail = email;
      _remember = true;
    } else {
      await prefs.remove('remembered_email');
      await prefs.setBool('remember_login', false);
      _rememberedEmail = '';
      _remember = false;
    }
    notifyListeners();
  }

  void setRemember(bool value) {
    _remember = value;
    notifyListeners();
  }
}
