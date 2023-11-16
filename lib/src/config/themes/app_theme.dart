import 'package:flutter/material.dart';
import 'package:jollof_express/src/config/themes/app_colors.dart';

abstract class AppTheme {
  static final light = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.deepPurple),
    useMaterial3: true,
  );

  static ThemeData of(BuildContext context) {
    return Theme.of(context);
  }
}
