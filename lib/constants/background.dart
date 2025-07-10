import 'package:flutter/material.dart';

import 'size_config.dart';
import 'styling.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: SizeConfig.screenHeight * 0.5,
          decoration: BoxDecoration(
            gradient: AppTheme.bgGradient,
          ),
        ),
        GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: child,
        ),
      ],
    );
  }
}
