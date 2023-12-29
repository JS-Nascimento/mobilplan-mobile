import 'package:flutter/material.dart';

class MobilplanColors {

  static const int _primaryValue = 0xFF989898; // Valor hexadecimal para a cor base

  static const MaterialColor customGrey = MaterialColor(
    _primaryValue, // valor da cor principal
    <int, Color>{
      50: Color(0xFFECECEC), // Tonalidades mais claras da cor base
      100: Color(0xFFD9D9D9),
      200: Color(0xFFC6C6C6),
      300: Color(0xFFB3B3B3),
      400: Color(0xFFA0A0A0),
      500: Color(0xFF989898), // Tonalidade padrão (cor base)
      600: Color(0xFF8A8A8A),
      700: Color(0xFF777777),
      800: Color(0xFF646464),
      900: Color(0xFF515151), // Tonalidades mais escuras da cor base
    },
  );

  static const int _secondaryColor = 0xFF888070; // Hexadecimal value for rgb(136, 128, 112)

  static const MaterialColor secondaryColor = MaterialColor(
    _secondaryColor, // primary color value
    <int, Color>{
      50: Color(0xFFECEBE7), // Lighter shades of the primary color
      100: Color(0xFFD9D7CF),
      200: Color(0xFFC6C2B7),
      300: Color(0xFFB3AE9F),
      400: Color(0xFFA09A87),
      500: Color(0xFF888070), // Default shade
      600: Color(0xFF7F7863),
      700: Color(0xFF6F6755),
      800: Color(0xFF5F5747),
      900: Color(0xFF4F4639), // Darker shades of the primary color
    },
  );

  static const int _surfaceBaseValue = 0xFFD9D9D9; // Valor hexadecimal para a cor base

  static const MaterialColor surfaceColor = MaterialColor(
    _surfaceBaseValue, // valor da cor principal
    <int, Color>{
      50: Color(0xFFF7F7F7), // Tonalidades mais claras da cor base
      100: Color(0xFFF1F1F1),
      200: Color(0xFFEAEAEA),
      300: Color(0xFFE3E3E3),
      400: Color(0xFFDDDDDD),
      500: Color(0xFFD9D9D9), // Tonalidade padrão (cor base)
      600: Color(0xFFC4C4C4),
      700: Color(0xFFAFAFAF),
      800: Color(0xFF9A9A9A),
      900: Color(0xFF858585), // Tonalidades mais escuras da cor base
    },
  );

  static const int _tertiaryBaseValue = 0xFF3D3835; // Valor hexadecimal para a nova cor base

  static const MaterialColor tertiaryColor = MaterialColor(
    _tertiaryBaseValue, // valor da cor principal
    <int, Color>{
      50: Color(0xFFE6E5E4), // Tonalidades mais claras da cor base
      100: Color(0xFFCDCBC9),
      200: Color(0xFFB4B0AE),
      300: Color(0xFF9B9693),
      400: Color(0xFF837C79),
      500: Color(0xFF3D3835), // Tonalidade padrão (cor base)
      600: Color(0xFF36312E),
      700: Color(0xFF2E2926),
      800: Color(0xFF25211E),
      900: Color(0xFF1C1816), // Tonalidades mais escuras da cor base
    },
  );

  static const int _textBaseValue = 0xFF4D4D4D; // Valor hexadecimal para a nova cor base

  static const MaterialColor textColor = MaterialColor(
    _textBaseValue, // valor da cor principal
    <int, Color>{
      50: Color(0xFFE8E8E8), // Tonalidades mais claras da cor base
      100: Color(0xFFD1D1D1),
      200: Color(0xFFB9B9B9),
      300: Color(0xFFA2A2A2),
      400: Color(0xFF8C8C8C),
      500: Color(0xFF4D4D4D), // Tonalidade padrão (cor base)
      600: Color(0xFF464646),
      700: Color(0xFF3E3E3E),
      800: Color(0xFF363636),
      900: Color(0xFF2E2E2E), // Tonalidades mais escuras da cor base
    },
  );
}