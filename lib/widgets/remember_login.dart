import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants/styling.dart';
import '../providers/remember_login_provider.dart';

class RememberLogin extends StatelessWidget {
  const RememberLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<RememberLoginProvider>(
      builder: (context, rememberProvider, _) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(
              value: rememberProvider.remember,
              onChanged: (value) {
                rememberProvider.setRemember(value ?? false);
              },
              side: const BorderSide(
                color: AppTheme.corFonteDestaque,
                width: 2,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              activeColor: AppTheme.corFonteDestaque,
              visualDensity:
                  const VisualDensity(horizontal: -2.0, vertical: -2.0),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            const Text(
              "Lembrar Sempre",
              style: AppTheme.labelText,
            ),
          ],
        );
      },
    );
  }
}
