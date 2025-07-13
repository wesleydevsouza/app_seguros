import 'package:desafio_mobile/widgets/login_options_block.dart';
import 'package:desafio_mobile/widgets/remember_login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/strings.dart';
import '../constants/styling.dart';
import '../providers/auth_provider.dart';
import '../providers/remember_login_provider.dart';
import '../utils/email_validator.dart';
import '../utils/password_validator.dart';
import 'button_forgot_password.dart';
import 'default_textfield.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  bool lembrar = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    final rememberProvider =
        Provider.of<RememberLoginProvider>(context, listen: false);
    rememberProvider.loadRememberedEmail().then((_) {
      if (mounted) {
        setState(() {
          emailController.text = rememberProvider.rememberedEmail;
        });
      }
    });
  }

  void _login() async {
    if (!_formKey.currentState!.validate()) return;
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    final rememberProvider =
        Provider.of<RememberLoginProvider>(context, listen: false);
    final success = await authProvider.login(
      email: emailController.text.trim(),
      password: senhaController.text.trim(),
    );
    // Salva ou limpa o e-mail conforme o checkbox
    await rememberProvider.setRememberedEmail(
      emailController.text.trim(),
      rememberProvider.remember,
    );
    if (success) {
      Navigator.of(context).pushReplacementNamed('/home');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(authProvider.errorMessage ?? 'Erro ao logar')),
      );
    }
  }

  void submit() => _login();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          DefaultTextField(
            controller: emailController,
            label: 'E-mail',
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Informe o e-mail';
              }
              if (!EmailValidator.isValid(value)) {
                return 'E-mail inválido';
              }
              return null;
            },
          ),
          const SizedBox(height: 10),
          DefaultTextField(
            controller: senhaController,
            label: 'Senha',
            textInputType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Informe a senha';
              }
              if (!PasswordValidator.isValid(value)) {
                return 'A senha deve conter apenas números e símbolos, 6 a 20 caracteres';
              }
              return null;
            },
            obscureText: true,
          ),
          const LoginOptionsBlock(),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
