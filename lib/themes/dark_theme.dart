import 'package:flutter/material.dart';
import 'app_color.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColor.bodyColorDark,
  hintColor: AppColor.textColor,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: Colors.white,
      fontSize: 40,
      fontWeight: FontWeight.bold,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white, backgroundColor: AppColor.buttonBackgroundColorDark,
    ),
  ),
  colorScheme: ColorScheme.dark(
    primary: AppColor.buttonBackgroundColorDark,
    onPrimary: Colors.white,
    surface: AppColor.bodyColorDark,
    onSurface: AppColor.textColor,
  ),
);
