class PasswordValidator {
  static bool isValid(String password) {
    final regex = RegExp(r'^[\d\W]{6,20}$');
    return regex.hasMatch(password);
  }
}
