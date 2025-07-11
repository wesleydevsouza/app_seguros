import 'package:desafio_mobile/widgets/login_options_block.dart';
import 'package:desafio_mobile/widgets/remember_login.dart';
import 'package:flutter/material.dart';
import '../constants/strings.dart';
import '../constants/styling.dart';
import '../widgets/button_forgot_password.dart';
import '../widgets/default_textfield.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool lembrar = false;
  final TextEditingController cpfController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTextField(
          controller: cpfController,
          label: 'CPF',
          textInputType: TextInputType.number,
        ),
        const SizedBox(height: 10),
        DefaultTextField(
          controller: senhaController,
          label: 'Senha',
          textInputType: TextInputType.visiblePassword,
        ),
        const LoginOptionsBlock(),
        const SizedBox(height: 10),
      ],
    );
  }
}
