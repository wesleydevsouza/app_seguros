import 'package:flutter/material.dart';

import 'button_forgot_password.dart';
import 'remember_login.dart';

class LoginOptionsBlock extends StatelessWidget {
  const LoginOptionsBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RememberLogin(),
        ButtonForgotPass(),
      ],
    );
  }
}
