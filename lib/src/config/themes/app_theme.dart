import 'package:flutter/material.dart';

abstract class AppTheme {
  static final light = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
    useMaterial3: true,
  );

  static ThemeData of(BuildContext context) {
    return Theme.of(context);
  }
}
