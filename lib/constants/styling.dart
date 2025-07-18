import 'package:flutter/material.dart';

class AppTheme {
  static LinearGradient bgGradient = const LinearGradient(colors: [
    Color(0xFF32a28c),
    Color(0xFF4dae83),
    Color(0xFFece178),
  ], begin: Alignment.topLeft, end: Alignment.bottomRight);

  static LinearGradient btnGradient = const LinearGradient(colors: [
    Color(0xFF32a28c),
    Color(0xFF4dae83),
    Color(0xFFece178),
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);

  static LinearGradient barGradient = const LinearGradient(colors: [
    Color(0xFF32a28c),
    Color(0xFF4dae83),
    Color(0xFFece178),
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);

  static const Color corFonte = Color(0xFFFFFAFA);
  static const Color corFonteDestaque = Color(0xFF32a28c);
  static const Color corTituloDark = Color(0xFF133E44);
  static const Color corTituloLight = Color(0xFFF8FCF6);

  static const Color corContainer = Color(0xFFF8FCF6);
  static const Color corBackground = Color(0xff22202b);
  static const Color corCard = Color(0xff292838);
  static const Color corBorda = Color(0xff8d8c9c);

  static const TextStyle titulo = TextStyle(
    color: corFonte,
    fontWeight: FontWeight.bold,
    fontSize: 26,
  );

  static const TextStyle subTitulo = TextStyle(
    color: corFonte,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  static const TextStyle textoGeral = TextStyle(
    color: corFonte,
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );

  static const TextStyle labelText = TextStyle(
    color: corFonte,
    fontWeight: FontWeight.normal,
    fontSize: 12,
  );

  static const TextStyle menuBold = TextStyle(
    color: corFonte,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static const TextStyle menuLight = TextStyle(
    color: Color(0xFFE2E2E2),
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );

  static const TextTheme lightTextTheme = TextTheme(
    titleLarge: titulo,
    titleMedium: menuBold,
    displayLarge: subTitulo,
    displayMedium: menuLight,
    bodyLarge: textoGeral,
    labelLarge: labelText,
  );

  static final ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: corBackground,
    textTheme: lightTextTheme,
  );
}
