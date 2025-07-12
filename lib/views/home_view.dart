import 'package:desafio_mobile/widgets/card_name.dart';
import 'package:desafio_mobile/widgets/top_bar_menu.dart';
import 'package:flutter/material.dart';
import '../constants/images.dart';
import '../constants/size_config.dart';
import '../viewmodels/home_viewmodel.dart';
import '../widgets/card_section.dart';
import '../widgets/drawer_menu.dart';

class HomeView extends StatelessWidget {
  final HomeViewModel viewModel = HomeViewModel();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      body: SafeArea(
        child: Column(
          children: [
            const TopBarMenu(),
            const CardName(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Cotar e Contratar",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 90,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: viewModel.cotarOpcoes.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 16),
                      itemBuilder: (context, index) =>
                          viewModel.cotarOpcoes[index],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: const [
                  Text("Minha Família",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 12),
                  SectionCard(
                    icon: Icons.add_circle_outline,
                    text:
                        "Adicione aqui membros da sua família e compartilhe os seguros com eles.",
                  ),
                  SizedBox(height: 24),
                  Text("Contratados",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 12),
                  SectionCard(
                    icon: Icons.sentiment_dissatisfied,
                    text: "Você ainda não possui seguros contratados.",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
