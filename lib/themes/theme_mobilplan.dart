import 'package:flutter/material.dart';
import 'package:mobilplan_mobile/themes/colors_mobilplan.dart';


ThemeData mobilPlanTheme = ThemeData(
  useMaterial3: false,
  colorScheme: ColorScheme.fromSeed(
    seedColor: MobilplanColors.customGrey, // Escolha uma cor semente para gerar o esquema
    brightness: Brightness.light,
    primary: MobilplanColors.customGrey[500],
    surface: MobilplanColors.surfaceColor[500],
    secondary: MobilplanColors.customGrey[500],
    tertiary:  MobilplanColors.tertiaryColor[500],
    onPrimary: MobilplanColors.textColor,
    onSurface: MobilplanColors.textColor,
    onSecondary: MobilplanColors.textColor,

  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: MobilplanColors.surfaceColor,
    foregroundColor: MobilplanColors.textColor,
  ),
  fontFamily: 'Montserrat',
 );



