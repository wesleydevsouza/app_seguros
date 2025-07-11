import 'package:desafio_mobile/constants/background.dart';
import 'package:desafio_mobile/constants/images.dart';
import 'package:desafio_mobile/constants/size_config.dart';
import 'package:desafio_mobile/constants/styling.dart';
import 'package:desafio_mobile/widgets/card_login.dart';
import 'package:desafio_mobile/widgets/social_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 30, 0, 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    Images.logo,
                    width: SizeConfig.widthMultiplier * 30,
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
                  const CardLogin(),
                  Positioned(
                    bottom: -28,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.greenAccent[700],
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(20),
                          elevation: 6,
                        ),
                        child: const Icon(Icons.arrow_forward,
                            color: Colors.white),
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
  }
}
