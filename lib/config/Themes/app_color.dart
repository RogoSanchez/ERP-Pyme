import 'package:app_theme/ui/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColor.primary,
        surface: AppColor.background,
      ),
    );
  }
}
