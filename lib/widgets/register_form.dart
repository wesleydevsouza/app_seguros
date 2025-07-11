import 'package:flutter/material.dart';
import 'default_textfield.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DefaultTextField(
            controller: nomeController,
            label: 'Nome completo',
          ),
          const SizedBox(height: 10),
          DefaultTextField(
            controller: cpfController,
            label: 'CPF',
            textInputType: TextInputType.number,
          ),
          const SizedBox(height: 10),
          DefaultTextField(
            controller: emailController,
            label: 'E-mail',
            textInputType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 10),
          DefaultTextField(
            controller: senhaController,
            label: 'Senha',
            textInputType: TextInputType.visiblePassword,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
