import 'package:desafio_mobile/constants/background.dart';
import 'package:desafio_mobile/constants/size_config.dart';
import 'package:desafio_mobile/constants/styling.dart';
import 'package:desafio_mobile/widgets/card_login.dart';
import 'package:desafio_mobile/widgets/social_bar.dart';
import 'package:flutter/material.dart';
import '../constants/strings.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              const Text(
                Strings.name,
                textAlign: TextAlign.center,
                style: AppTheme.titulo,
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 1),
              const Text(
                Strings.welcome,
                textAlign: TextAlign.center,
                style: AppTheme.subTitulo,
              ),
              const Text(
                Strings.description,
                textAlign: TextAlign.center,
                style: AppTheme.textoGeral,
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              const CardLogin(),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              const SocialBar(),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
            ],
          ),
        ),
      ),
    );
  }
}
