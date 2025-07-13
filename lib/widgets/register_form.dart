import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import '../providers/user_provider.dart';
import 'default_textfield.dart';
import '../utils/email_validator.dart';
import '../utils/password_validator.dart';
import '../utils/name_validator.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  RegisterFormState createState() => RegisterFormState();
}

class RegisterFormState extends State<RegisterForm> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _register() async {
    if (!_formKey.currentState!.validate()) return;
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    final success = await authProvider.register(
      email: emailController.text.trim(),
      password: senhaController.text.trim(),
    );
    if (success) {
      await userProvider.setUserName(nomeController.text.trim());
      Navigator.of(context).pushReplacementNamed('/home');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(authProvider.errorMessage ?? 'Erro ao registrar')),
      );
    }
  }

  void submit() => _register();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            DefaultTextField(
              controller: nomeController,
              label: 'Nome completo',
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Informe o nome';
                }
                if (!NameValidator.isValid(value.trim())) {
                  return 'O nome deve conter apenas letras e espaços';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
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
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
