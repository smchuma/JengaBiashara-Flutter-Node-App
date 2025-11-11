import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xFF0EA5A2),
      brightness: Brightness.light,
    ),

    scaffoldBackgroundColor: const Color(0xFFF8FAFC),

    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue.shade800,
      foregroundColor: Colors.white,
      elevation: 2,
    ),
  );
}
