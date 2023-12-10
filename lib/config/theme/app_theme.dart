// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:sovchilar/config/values/color_constants.dart';
import 'package:sovchilar/config/values/font_constants.dart';

class AppTheme {
  //
  static final ThemeData lightTheme = ThemeData(
    fontFamily: MyFonts.main,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      //
      primary: MyColors.primary,
      onPrimary: Colors.white,
      //
      secondary: MyColors.secondary,
      onSecondary: Colors.white,
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
      titleLarge: TextStyle(
        fontSize: 34,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: TextStyle(
        fontSize: 28,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
