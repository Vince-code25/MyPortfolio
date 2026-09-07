import 'package:flutter/material.dart';


class AppColors {
  static const background = Color(0xFFFAFAF7); 
  static const ink = Color(0xFF1F2421); 
  static const inkFaded = Color(0xFF6B6F6C); 
  static const accent = Color(0xFF2F4858); 
  static const divider = Color(0xFFDEDBD3);
}

class AppTextStyles {
  static const title = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: AppColors.ink,
    height: 1.2,
  );

  static const subtitle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.inkFaded,
    height: 1.4,
  );

  static const body = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.ink,
    height: 1.6,
  );

  static const label = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.accent,
    letterSpacing: 0.2,
  );

  static const button = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}

ThemeData buildAppTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.background,
    fontFamily: 'Roboto',
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.accent,
      background: AppColors.background,
    ),
    dividerColor: AppColors.divider,
    useMaterial3: true,
  );
}
