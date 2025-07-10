import 'package:desafio_mobile/constants/background.dart';
import 'package:desafio_mobile/constants/size_config.dart';
import 'package:desafio_mobile/constants/styling.dart';
import 'package:flutter/material.dart';
import '../constants/strings.dart';
import 'login_form.dart';
import 'register_form.dart';

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
              const SizedBox(height: 30),
              const Text(
                Strings.name,
                textAlign: TextAlign.center,
                style: AppTheme.titulo,
              ),
              const SizedBox(height: 10),
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
              const SizedBox(height: 30),
              Container(
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
                child: const DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: Colors.green,
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: Colors.green,
                        tabs: [
                          Tab(text: "Entrar"),
                          Tab(text: "Cadastrar"),
                        ],
                      ),
                      SizedBox(height: 20),
                      Expanded(
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
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.g_mobiledata, size: 40),
                  SizedBox(width: 20),
                  Icon(Icons.facebook, size: 30),
                  SizedBox(width: 20),
                  Icon(Icons.alternate_email, size: 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
