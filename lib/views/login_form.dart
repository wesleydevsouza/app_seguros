import 'package:desafio_mobile/constants/size_config.dart';
import 'package:desafio_mobile/widgets/login_options_block.dart';
import 'package:flutter/material.dart';
import '../widgets/default_textfield.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool lembrar = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTextField(
          controller: emailController,
          label: 'E-mail',
          textInputType: TextInputType.emailAddress,
        ),
        SizedBox(height: SizeConfig.heightMultiplier * 1),
        DefaultTextField(
          controller: senhaController,
          label: 'Senha',
          textInputType: TextInputType.visiblePassword,
        ),
        const LoginOptionsBlock(),
      ],
    );
  }
}
