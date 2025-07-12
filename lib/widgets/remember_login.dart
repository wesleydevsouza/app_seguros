import 'package:flutter/material.dart';
import '../constants/styling.dart';

class RememberLogin extends StatefulWidget {
  const RememberLogin({super.key});

  @override
  State<RememberLogin> createState() => _RememberLoginState();
}

class _RememberLoginState extends State<RememberLogin> {
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: remember,
          onChanged: (value) {
            setState(() {
              remember = value ?? false;
            });
          },
          side: const BorderSide(
            color: AppTheme.corFonteDestaque,
            width: 2,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          activeColor: AppTheme.corFonteDestaque,
          visualDensity: const VisualDensity(horizontal: -2.0, vertical: -2.0),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        const Text(
          "Lembrar Sempre",
          style: AppTheme.labelText,
        ),
      ],
    );
  }
}
