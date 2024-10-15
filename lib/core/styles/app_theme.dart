import 'package:flutter/material.dart';
import 'package:maids_task/core/styles/app_text_styles.dart';

ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        backgroundColor: Colors.indigo,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      labelStyle: AppTextStyles.medium14.copyWith(fontSize: 12),
      filled: true,
      hintStyle:
          AppTextStyles.medium14.copyWith(fontSize: 12, color: Colors.grey),
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
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Colors.white,
    ));
