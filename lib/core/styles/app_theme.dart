import 'package:flutter/material.dart';
import 'package:maids_task/core/styles/app_text_styles.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      backgroundColor: Colors.indigo,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    hintStyle: AppTextStyles.medium14,
    border: const OutlineInputBorder(),
  ),
);
