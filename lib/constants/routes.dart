import 'package:flutter/material.dart';

import '../views/home_view.dart';
import '../views/login_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(
          builder: (context) => const Login(),
        );

      case '/home':
        return MaterialPageRoute(
          builder: (context) => HomeView(),
        );

      default:
        return MaterialPageRoute(builder: (context) => const Login());
    }
  }
}
