import 'package:app_theme/ui/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  ThemeData theme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: AppColor.appBarTitle),
      ),
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColor.primary,
        surface: AppColor.background,
        error: AppColor.error,
        
      ),
    );
  }
}

extension ColorSchemeExtension on ColorScheme {
  Color get success => brightness == Brightness.dark 
      ? const Color(0xFF4CAF50)  // Verde oscuro
      : const Color(0xFF2E7D32); // Verde claro

  Color get onSuccess => brightness == Brightness.dark
      ? Colors.black
      : Colors.white;

  Color get warning => brightness == Brightness.dark
      ? const Color(0xFFFF9800)  // Naranja oscuro  
      : const Color(0xFFF57C00); // Naranja claro

  Color get onWarning => Colors.white;
}
