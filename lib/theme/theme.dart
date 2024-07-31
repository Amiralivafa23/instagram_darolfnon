import 'package:flutter/material.dart';
import 'package:inastagram/theme/colors.dart';

ThemeData myTheme() {
  return ThemeData(
      dividerTheme: DividerThemeData(color: surfaceColor),
      fontFamily: 'Poppins',
      filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
              textStyle: const MaterialStatePropertyAll(
                  TextStyle(fontWeight: FontWeight.w800,fontSize: 18  )),
              padding: const MaterialStatePropertyAll(
                  EdgeInsets.symmetric(vertical: 16)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4))))),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        filled: true,
        hintStyle: const TextStyle(color: Colors.grey),
        fillColor: Colors.grey.shade100,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(
                style: BorderStyle.solid, color: surfaceColor)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(
                style: BorderStyle.solid, color: surfaceColor)),
      ),
      appBarTheme: const AppBarTheme(centerTitle: true, color: backgroundColor),
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: primaryColor,
          onPrimary: onPrimaryColor,
          secondary: secondaryColor,
          onSecondary: onSecondaryColor,
          error: errorColor,
          onError: onErrorColor,
          background: backgroundColor,
          onBackground: onBackgroundColor,
          surface: surfaceColor,
          onSurface: onSurfaceColor));
}
