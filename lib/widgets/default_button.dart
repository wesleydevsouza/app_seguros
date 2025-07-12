import 'package:flutter/material.dart';

import '../../constants/size_config.dart';
import '../constants/styling.dart';

class DefaultButton extends StatelessWidget {
  final Function()? onPressed;
  final double? size;

  const DefaultButton({
    super.key,
    required this.onPressed,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    double buttonSize = size ?? SizeConfig.widthMultiplier * 15;

    return Center(
      child: Container(
        width: buttonSize,
        height: buttonSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: AppTheme.btnGradient,
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: const Icon(Icons.arrow_forward_outlined, color: Colors.white),
          iconSize: buttonSize * 0.5,
        ),
      ),
    );
  }
}
