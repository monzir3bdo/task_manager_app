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
    fillColor: Colors.white,
    filled: true,
    hintStyle: AppTextStyles.medium14,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black.withOpacity(0.1),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black.withOpacity(0.1),
      ),
    ),
  ),
);
