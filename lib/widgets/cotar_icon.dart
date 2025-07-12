import 'package:flutter/material.dart';

import '../constants/size_config.dart';
import '../constants/styling.dart';

class CotarIcon extends StatelessWidget {
  final String label;
  final String imagePath;
  final VoidCallback? onTap;

  const CotarIcon({
    super.key,
    required this.label,
    required this.imagePath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: AppTheme.corCard,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: SizeConfig.heightMultiplier * 4,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 1),
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    label,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
