import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppTheme.bgGradient,
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 30),
              // Logo
              const Text(
                "TOKIO MARINE\nSEGURADORA",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(height: 10),
              const Text(
                "Bem vindo!\nAqui você gerencia seus seguros e de seus familiares em poucos cliques!",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70),
              ),
              const SizedBox(height: 30),

              // Caixa de login com abas
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        const TabBar(
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.white,
                          tabs: [
                            Tab(text: "Entrar"),
                            Tab(text: "Cadastrar"),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: TabBarView(
                            children: [
                              _LoginForm(),
                              _RegisterForm(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatefulWidget {
  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  bool lembrar = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextField(
          decoration: InputDecoration(
            labelText: 'CPF',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 10),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Senha',
            border: OutlineInputBorder(),
          ),
        ),
        Row(
          children: [
            Checkbox(
              value: lembrar,
              onChanged: (value) {
                setState(() {
                  lembrar = value!;
                });
              },
            ),
            const Text("Lembrar Sempre"),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: const Text("Esqueceu a senha?"),
            ),
          ],
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.greenAccent[700],
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(20),
          ),
          child: const Icon(Icons.arrow_forward, color: Colors.white),
        ),
        const SizedBox(height: 20),
        const Text("Acesse através das redes sociais"),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.g_mobiledata, size: 40),
            SizedBox(width: 20),
            Icon(Icons.facebook, size: 30),
            SizedBox(width: 20),
            Icon(Icons.alternate_email, size: 30),
          ],
        )
      ],
    );
  }
}

class _RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Cadastro"));
  }
}

class AppTheme {
  static const bgGradient = LinearGradient(
    colors: [Color(0xFF00C8A0), Color(0xFFFFD640)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
