import 'package:flutter_test/flutter_test.dart';
import 'package:desafio_mobile/providers/auth_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  });

  group('AuthProvider', () {
    late AuthProvider authProvider;

    setUp(() {
      authProvider = AuthProvider();
    });

    test('Registro de usuário', () async {
      final email = 'test_${DateTime.now().millisecondsSinceEpoch}@test.com';
      final password = '123456!';
      final result =
          await authProvider.register(email: email, password: password);
      expect(result, true);
      expect(authProvider.isLoggedIn, true);
    });

    test('Login com usuário válido', () async {
      final email = 'testuser@test.com';
      final password = '123456!';
      final result = await authProvider.login(email: email, password: password);
      expect(result, true);
      expect(authProvider.isLoggedIn, true);
    });

    test('Logout', () async {
      authProvider.logout();
      expect(authProvider.isLoggedIn, false);
    });
  });
}
