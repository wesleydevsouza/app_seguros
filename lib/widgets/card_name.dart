import 'package:flutter/material.dart';
import '../constants/size_config.dart';
import '../constants/strings.dart';
import '../constants/styling.dart';

class CardName extends StatelessWidget {
  const CardName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: AppTheme.barGradient,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(Icons.account_circle,
                color: Colors.white, size: SizeConfig.heightMultiplier * 6),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Strings.welcome, style: TextStyle(color: Colors.white)),
              Text('User Teste',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
            ],
          ),
        ],
      ),
    );
  }
}
