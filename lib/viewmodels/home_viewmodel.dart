import 'package:flutter/material.dart';

import '../widgets/cotar_icon.dart';
import '../constants/images.dart';

class HomeViewModel {
  List<Widget> cotarOpcoes({VoidCallback? onAutoTap}) => [
        CotarIcon(label: "Automóvel", imagePath: Images.auto, onTap: onAutoTap),
        const CotarIcon(label: "Residência", imagePath: Images.residential),
        const CotarIcon(label: "Vida", imagePath: Images.life),
        const CotarIcon(label: "Acidentes", imagePath: Images.accident),
        const CotarIcon(label: "Empresa", imagePath: Images.enterprise),
        const CotarIcon(label: "Funeral", imagePath: Images.funeral),
        const CotarIcon(label: "Moto", imagePath: Images.bike),
        const CotarIcon(label: "Educação", imagePath: Images.trainee),
        const CotarIcon(label: "Viagem", imagePath: Images.travel),
      ];
}
