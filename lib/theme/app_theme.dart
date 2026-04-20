import 'package:flutter/material.dart';

class AppTheme {
  // Colors
  static const Color darkBg = Color(0xFF0F1117);
  static const Color darkSurface = Color(0xFF161820);
  static const Color darkCard = Color(0xFF1C1F2A);
  static const Color darkCardAlt = Color(0xFF1E2130);
  static const Color accentGreen = Color(0xFF39E88F);
  static const Color accentGreenDim = Color(0xFF2DC574);
  static const Color accentBlue = Color(0xFF4C9EEB);
  static const Color accentOrange = Color(0xFFFF6B35);
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFF8B8FA8);
  static const Color textMuted = Color(0xFF5A5F72);
  static const Color progressBg = Color(0xFF252836);

  // Light theme colors (for water & goals screens)
  static const Color lightBg = Color(0xFFF5F7FA);
  static const Color lightCard = Color(0xFFFFFFFF);
  static const Color lightText = Color(0xFF1A1D2E);
  static const Color lightTextSecondary = Color(0xFF8B8FA8);

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: darkBg,
      fontFamily: 'SF Pro Display',
      colorScheme: const ColorScheme.dark(
        primary: accentGreen,
        surface: darkSurface,
        onSurface: textPrimary,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: textPrimary,
          fontSize: 32,
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: textPrimary,
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: textSecondary,
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: textPrimary,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      useMaterial3: true,
    );
  }
}