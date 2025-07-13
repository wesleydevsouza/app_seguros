import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/size_config.dart';
import '../constants/strings.dart';
import '../constants/styling.dart';
import '../providers/user_provider.dart';

class CardName extends StatelessWidget {
  const CardName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    if (userProvider.userName.isEmpty) {
      userProvider.loadUserName();
    }
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Bem-vindo', style: TextStyle(color: Colors.white)),
              Text(
                userProvider.userName.isNotEmpty
                    ? userProvider.userName
                    : 'Usuário',
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
