import 'package:flutter/material.dart';

import '../constants/size_config.dart';
import '../constants/styling.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppTheme.corCard,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    "Olá!",
                    style: AppTheme.labelText,
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Icon(
                        Icons.account_circle,
                        color: Colors.white,
                        size: SizeConfig.heightMultiplier * 6,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "User Teste",
                          style: AppTheme.subTitulo,
                        ),
                        Text(
                          "Minha conta",
                          style: AppTheme.labelText.copyWith(
                            color: AppTheme.corFonteDestaque,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DrawerItem(title: "Home/Seguro"),
                  DrawerItem(title: "Minhas Contribuições"),
                  DrawerItem(title: "Meus Sinistros"),
                  DrawerItem(title: "Minha Família"),
                  DrawerItem(title: "Meus Bens"),
                  DrawerItem(title: "Pagamentos"),
                  DrawerItem(title: "Corretores"),
                  DrawerItem(title: "Validar Boleto"),
                  DrawerItem(title: "Telefones Importantes"),
                  DrawerItem(title: "Configurações"),
                  SizedBox(height: 8),
                  DrawerItem(title: "Sair", isExit: true),
                ],
              ),
            ),
          ),
          Container(
            height: SizeConfig.heightMultiplier * 15,
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: AppTheme.bgGradient,
            ),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/duvida_avatar.png'),
                    radius: 20,
                  ),
                ),
                Expanded(
                  child: Text(
                    "Dúvidas?\nFale com nosso time \ne tire todas as suas dúvidas.",
                    style: AppTheme.labelText,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isExit;

  const DrawerItem({super.key, required this.title, this.isExit = false});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: Icon(
        Icons.settings,
        color: isExit ? Colors.red : AppTheme.corFonteDestaque,
        size: 20,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: isExit ? Colors.red : Colors.white,
          fontWeight: isExit ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
