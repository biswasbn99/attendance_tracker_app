import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  appBarTheme: AppBarThemeData(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      letterSpacing: -0.3,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      minimumSize: Size(double.infinity, 52.0)
    ),
  ),
);
