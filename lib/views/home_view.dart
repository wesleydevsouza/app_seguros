import 'package:desafio_mobile/constants/size_config.dart';
import 'package:desafio_mobile/widgets/card_name.dart';
import 'package:desafio_mobile/widgets/top_bar_menu.dart';
import 'package:flutter/material.dart';
import '../constants/strings.dart';
import '../constants/styling.dart';
import '../viewmodels/home_viewmodel.dart';
import '../widgets/card_section.dart';
import '../widgets/drawer_menu.dart';
import 'package:desafio_mobile/services/webview_service.dart';

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
                  const Text(Strings.quote, style: AppTheme.titulo),
                  SizedBox(height: SizeConfig.heightMultiplier * 2),
                  SizedBox(
                    height: 90,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: viewModel
                          .cotarOpcoes(
                              onAutoTap: () => WebViewService.openWebView(
                                  context, 'https://www.google.com'))
                          .length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 10),
                      itemBuilder: (context, index) => viewModel.cotarOpcoes(
                          onAutoTap: () => WebViewService.openWebView(
                              context, 'https://www.google.com'))[index],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: const [
                  Text(Strings.mf, style: AppTheme.titulo),
                  SizedBox(height: 12),
                  SectionCard(
                    icon: Icons.add_circle_outline,
                    text: Strings.family,
                  ),
                  SizedBox(height: 24),
                  Text(Strings.contra, style: AppTheme.titulo),
                  SizedBox(height: 12),
                  SectionCard(
                    icon: Icons.sentiment_dissatisfied,
                    text: Strings.noEnsuranse,
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
