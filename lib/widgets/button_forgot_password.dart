import 'package:flutter/material.dart';

import '../constants/styling.dart';

class ButtonForgotPass extends StatelessWidget {
  const ButtonForgotPass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Esqueceu a senha?",
        style: AppTheme.labelText.copyWith(color: Colors.blue),
      ),
    );
  }
}
