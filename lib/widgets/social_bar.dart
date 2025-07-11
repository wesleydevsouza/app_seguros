import 'package:flutter/material.dart';

import '../constants/size_config.dart';
import '../constants/strings.dart';
import '../constants/styling.dart';

class SocialBar extends StatelessWidget {
  const SocialBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          Strings.social,
          style: AppTheme.textoGeral,
        ),
        SizedBox(height: SizeConfig.heightMultiplier * 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.g_mobiledata,
              size: 40,
              color: Colors.white,
            ),
            SizedBox(width: SizeConfig.widthMultiplier * 1),
            const Icon(
              Icons.facebook,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(width: SizeConfig.widthMultiplier * 1),
            const Icon(
              Icons.alternate_email,
              size: 30,
              color: Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}
