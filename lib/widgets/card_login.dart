import 'package:flutter/material.dart';
import 'package:desafio_mobile/constants/styling.dart';
import 'package:desafio_mobile/constants/strings.dart';
import 'package:desafio_mobile/constants/size_config.dart';

import '../views/login_form.dart';
import '../views/register_form.dart';

class CardLogin extends StatelessWidget {
  const CardLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 50,
      width: SizeConfig.screenWidth * 0.85,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: AppTheme.corCard,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              dividerColor: Colors.transparent,
              labelColor: AppTheme.corFonteDestaque,
              unselectedLabelColor: AppTheme.corFonte,
              indicatorColor: AppTheme.corFonteDestaque,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
              indicatorPadding: EdgeInsets.only(top: -2),
              tabs: [
                Tab(text: Strings.login),
                Tab(text: Strings.register),
              ],
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 2),
            const Expanded(
              child: TabBarView(
                children: [
                  LoginForm(),
                  RegisterForm(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
