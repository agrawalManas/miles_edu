import 'package:flutter/material.dart';

class SecondaryColor {
  static const Color primary01 = Color(0XFF0B1A2B);
  static const Color primary02 = Color(0xFF050b14);
  static const Color primary03 = Color(0xFF4DB6E0);
}

class NeutralColor {
  static const Color neutral01 = Color(0xFFFFFFFF);
  static const Color neutral02 = Color(0xFFD5DBE2);
  static const Color neutral03 = Color(0xFF4C4C4C);
  static const Color neutral04 = Color(0xFF28303A);
}

class SemanticColor {
  static const Color semantic01 = Color(0xFFE03431);
  static const Color semantic02 = Color(0xFFFFA548);
}

class BackgroundColor {
  static const Color black = Color(0xFF000000);
  static const Color background = Color(0xFF0A1726);
  static const Color lightBg = Color(0xFDDDEEFF);
  static const Color transparent = Color(0x00000000);
}

class AppColors {
  // Primary Colors
  static Color get secondary01 => SecondaryColor.primary01;
  static Color get secondary02 => SecondaryColor.primary02;
  static Color get secondary03 => SecondaryColor.primary03;

  // Neutral Colors
  static Color get neutral03 => NeutralColor.neutral03;
  static Color get neutral04 => NeutralColor.neutral04;
  static Color get neutral02 => NeutralColor.neutral02;
  static Color get neutral01 => NeutralColor.neutral01;

  // Semantic Colors
  static Color get semantic01 => SemanticColor.semantic01;
  static Color get semantic03 => SemanticColor.semantic02;

  // Background Colors
  static Color get background => BackgroundColor.background;
  static Color get black => BackgroundColor.black;
  static Color get lightBg => BackgroundColor.lightBg;
  static Color get transparent => BackgroundColor.transparent;
}
