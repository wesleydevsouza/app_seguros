import 'package:desafio_mobile/views/mock.dart';
import 'package:flutter/material.dart';

import '../views/login_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(
          builder: (context) => const Login(),
        );

      case '/mock':
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );

      default:
        return MaterialPageRoute(builder: (context) => const Login());
    }
  }
}
