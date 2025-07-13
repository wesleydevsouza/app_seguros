import 'package:desafio_mobile/constants/background.dart';
import 'package:desafio_mobile/constants/images.dart';
import 'package:desafio_mobile/constants/size_config.dart';
import 'package:desafio_mobile/constants/styling.dart';
import 'package:desafio_mobile/widgets/card_login.dart';
import 'package:desafio_mobile/widgets/default_button.dart';
import 'package:desafio_mobile/widgets/social_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import '../constants/strings.dart';
import 'package:desafio_mobile/widgets/login_form.dart';
import 'package:desafio_mobile/widgets/register_form.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int _selectedTab = 0;
  final GlobalKey<LoginFormState> _loginKey = GlobalKey<LoginFormState>();
  final GlobalKey<RegisterFormState> _registerKey =
      GlobalKey<RegisterFormState>();

  void _onMainButtonPressed() {
    if (_selectedTab == 0) {
      _loginKey.currentState?.submit();
    } else {
      _registerKey.currentState?.submit();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final authProvider = Provider.of<AuthProvider>(context);
    if (authProvider.isLoggedIn) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.of(context).pushReplacementNamed('/home');
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                padding: EdgeInsets.zero,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(32, 30, 0, 8),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset(
                              Images.logo,
                              width: 140,
                            ),
                          ),
                        ),
                        SizedBox(height: SizeConfig.heightMultiplier * 1),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(32, 0, 0, 8),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              Strings.welcome,
                              textAlign: TextAlign.center,
                              style: AppTheme.subTitulo,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(32, 0, 0, 8),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              Strings.description,
                              style: AppTheme.textoGeral,
                            ),
                          ),
                        ),
                        SizedBox(height: SizeConfig.heightMultiplier * 6),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            CardLogin(
                              selectedTab: _selectedTab,
                              onTabChanged: (index) {
                                setState(() {
                                  _selectedTab = index;
                                });
                              },
                              loginFormKey: _loginKey,
                              registerFormKey: _registerKey,
                            ),
                            Positioned(
                              bottom: -28,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: DefaultButton(
                                  onPressed: _onMainButtonPressed,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: SizeConfig.heightMultiplier * 12),
                        const SocialBar(),
                        SizedBox(height: SizeConfig.heightMultiplier * 2),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
