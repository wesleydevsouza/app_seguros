import 'package:flutter/material.dart';
import 'package:desafio_mobile/constants/styling.dart';
import 'package:desafio_mobile/constants/strings.dart';
import 'package:desafio_mobile/constants/size_config.dart';

import 'login_form.dart';
import 'register_form.dart';

class CardLogin extends StatefulWidget {
  final int selectedTab;
  final void Function(int)? onTabChanged;
  final GlobalKey<LoginFormState>? loginFormKey;
  final GlobalKey<RegisterFormState>? registerFormKey;

  const CardLogin({
    super.key,
    required this.selectedTab,
    this.onTabChanged,
    this.loginFormKey,
    this.registerFormKey,
  });

  @override
  State<CardLogin> createState() => _CardLoginState();
}

class _CardLoginState extends State<CardLogin> with TickerProviderStateMixin {
  int _selectedTab = 0;
  double sizedBoxHeight = SizeConfig.screenWidth < 950
      ? SizeConfig.screenWidth * 0.85
      : SizeConfig.screenWidth * 0.35;

  @override
  void initState() {
    super.initState();
    _selectedTab = widget.selectedTab;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizedBoxHeight,
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
              widget.onTabChanged?.call(index);
            },
            controller: TabController(
              length: 2,
              vsync: this,
              initialIndex: widget.selectedTab,
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
            child: widget.selectedTab == 0
                ? LoginForm(key: widget.loginFormKey)
                : RegisterForm(key: widget.registerFormKey),
          ),
          SizedBox(height: SizeConfig.heightMultiplier * 2),
        ],
      ),
    );
  }
}
