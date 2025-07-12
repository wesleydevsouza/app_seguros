import 'package:flutter/material.dart';
import 'package:desafio_mobile/constants/styling.dart';
import 'package:desafio_mobile/constants/strings.dart';
import 'package:desafio_mobile/constants/size_config.dart';

import 'login_form.dart';
import 'register_form.dart';

class CardLogin extends StatefulWidget {
  const CardLogin({super.key});

  @override
  State<CardLogin> createState() => _CardLoginState();
}

class _CardLoginState extends State<CardLogin> with TickerProviderStateMixin {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.85,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: AppTheme.corCard,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TabBar(
            onTap: (index) {
              FocusScope.of(context).unfocus();
              setState(() {
                _selectedTab = index;
              });
            },
            controller: TabController(
              length: 2,
              vsync: this,
              initialIndex: _selectedTab,
            ),
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            dividerColor: Colors.transparent,
            labelColor: AppTheme.corFonteDestaque,
            unselectedLabelColor: AppTheme.corFonte,
            indicatorColor: AppTheme.corFonteDestaque,
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            indicatorPadding: const EdgeInsets.only(top: -2),
            tabs: const [
              Tab(text: Strings.login),
              Tab(text: Strings.register),
            ],
          ),
          SizedBox(height: SizeConfig.heightMultiplier * 2),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            transitionBuilder: (child, animation) =>
                FadeTransition(opacity: animation, child: child),
            child: _selectedTab == 0
                ? const LoginForm(key: ValueKey(0))
                : const RegisterForm(key: ValueKey(1)),
          ),
          SizedBox(height: SizeConfig.heightMultiplier * 2),
        ],
      ),
    );
  }
}
