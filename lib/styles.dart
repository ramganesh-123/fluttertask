import 'package:flutter/material.dart';

class AppColors {
  static ColorScheme appColorScheme = const ColorScheme(
    primary: AppColors.secondary,
    secondary: AppColors.ternary,
    surface: AppColors.secondaryVariantLight,
    error: AppColors.primary,
    onPrimary: AppColors.primary,
    onSecondary: AppColors.primary,
    onSurface: AppColors.onPrimary,
    onError: AppColors.primary,
    brightness: Brightness.light,
  );

  static LinearGradient appGradient = const LinearGradient(
    colors: [
      AppColors.secondary,
      AppColors.primary,
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const Color primary = Color(0xFFFFFFFF);
  static const Color onPrimary = Color(0xFF2D2D2D);

  static const Color secondary = Color(0xFF2EA446);
  static const Color secondaryVariant = Color(0xFFC4E59E);
  static const Color secondaryVariantLight = Color(0xFFECF2E7);
  static const Color onSecondary = Color(0xFFFFFFFF);
  static const Color onSecondaryVariant = Color(0xFF49454F);
  static const Color onSecondaryVariantDark = Color(0xFF484C54);
  static const Color onSecondaryVariant5B = Color(0xFF5B5B5B);
  static const Color ternary = Color.fromARGB(210, 185, 225, 4);
  static const Color background = Color(0xFFF8F8F8);
}
