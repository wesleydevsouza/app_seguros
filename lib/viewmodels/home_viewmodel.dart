import 'package:flutter/material.dart';

import '../widgets/cotar_icon.dart';
import '../constants/images.dart';

class HomeViewModel {
  final List<Widget> cotarOpcoes = const [
    CotarIcon(label: "Automóvel", imagePath: Images.auto),
    CotarIcon(label: "Residência", imagePath: Images.residential),
    CotarIcon(label: "Vida", imagePath: Images.life),
    CotarIcon(label: "Acidentes", imagePath: Images.accident),
    CotarIcon(label: "Empresa", imagePath: Images.enterprise),
    CotarIcon(label: "Funeral", imagePath: Images.funeral),
    CotarIcon(label: "Moto", imagePath: Images.bike),
    CotarIcon(label: "Educação", imagePath: Images.trainee),
    CotarIcon(label: "Viagem", imagePath: Images.travel),
  ];
}
