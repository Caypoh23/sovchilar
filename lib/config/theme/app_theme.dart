// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:sovchilar/config/values/color_constants.dart';
import 'package:sovchilar/config/values/font_constants.dart';

class AppTheme {
  //
  static final ThemeData lightTheme = ThemeData(
    fontFamily: MyFonts.main,
    scaffoldBackgroundColor: Colors.black12,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      //
      primary: MyColors.primary,
      onPrimary: Colors.white,
      //
      primaryContainer: MyColors.primaryContainer,
      onPrimaryContainer: MyColors.onPrimaryContainer,
      //
      secondary: MyColors.secondary,
      onSecondary: MyColors.onSecondary,
      //
      tertiary: MyColors.tertiary,
      //
      background: MyColors.grey,
      onBackground: MyColors.onBackground,
      //
      error: Colors.red,
      onError: Colors.white,
      //
      surface: Colors.black,
      onSurface: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: MyColors.grey,
      centerTitle: true,
      elevation: 0,
    ),
    //
    //
    textTheme: const TextTheme(
      ///
      /// Title
      ///

      titleLarge: TextStyle(
        fontSize: 28,
        color: MyColors.grey,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: TextStyle(
        fontSize: 28,
        color: MyColors.grey,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: TextStyle(
        fontSize: 28,
        color: MyColors.grey,
        fontWeight: FontWeight.w400,
      ),

      ///
      /// Body
      ///

      bodyLarge: TextStyle(
        fontSize: 16,
        color: MyColors.grey,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: MyColors.grey,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(
        fontSize: 16,
        color: MyColors.grey,
        fontWeight: FontWeight.w400,
      ),

      ///
      /// Label
      ///

      labelLarge: TextStyle(
        fontSize: 12,
        color: MyColors.grey,
        fontWeight: FontWeight.w700,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        color: MyColors.grey,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        fontSize: 12,
        color: MyColors.grey,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
