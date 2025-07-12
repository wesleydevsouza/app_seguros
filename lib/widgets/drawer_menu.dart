import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFF0072FF)),
            child: Text('Menu',
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Perfil'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações'),
          ),
        ],
      ),
    );
  }
}
