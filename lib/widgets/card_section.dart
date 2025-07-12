import 'package:flutter/material.dart';

import '../constants/size_config.dart';
import '../constants/styling.dart';

class SectionCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const SectionCard({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppTheme.corCard,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          SizedBox(height: SizeConfig.heightMultiplier * 3),
          Icon(icon, color: Colors.white, size: 40),
          SizedBox(height: SizeConfig.heightMultiplier * 2),
          Text(
            text,
            style: const TextStyle(color: Colors.white70),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: SizeConfig.heightMultiplier * 3),
        ],
      ),
    );
  }
}
