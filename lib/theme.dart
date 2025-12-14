import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: Colors.white,
    // primary: Color.fromARGB(255, 246, 247, 214),
    onSecondary: Colors.black,
    secondary: Color.fromARGB(255, 231, 234, 242),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    primary: Color.fromARGB(26, 246, 247, 214),
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    secondary: Colors.grey.shade700,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.blueGrey,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.white,
      textStyle: TextStyle(decoration: TextDecoration.underline),
    ),
  ),
);
