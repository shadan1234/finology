import 'package:flutter/material.dart';
import 'app_color.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColor.bodyColor,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: Colors.black,
      fontSize: 40,
      fontWeight: FontWeight.bold,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white, backgroundColor: Colors.black,
    ),
  ),
  colorScheme: ColorScheme.light(
    background: AppColor.bodyColor,
    primary: AppColor.buttonBackgroundColor,
    onPrimary: Colors.white,
    surface: AppColor.bodyColor,
    onSurface: AppColor.textColor,
  ),
);