class NameValidator {
  static bool isValid(String name) {
    final regex = RegExp(r"^[A-Za-zÀ-ÖØ-öø-ÿ\s]+$");
    return regex.hasMatch(name);
  }
}
