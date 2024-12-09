import 'package:checkout/core/config/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      titleTextStyle: AppTextStyles.textStyleMedium25,
    ),
  );
}
