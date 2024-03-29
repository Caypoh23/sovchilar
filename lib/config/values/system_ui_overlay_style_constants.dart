// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract class MySystemUiOverlayStyle {
  //
  static const splash = SystemUiOverlayStyle(
    systemStatusBarContrastEnforced: false,
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
    //
    systemNavigationBarColor: Colors.white,
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarDividerColor: Colors.transparent,
  );

  static const lightStatusBar = SystemUiOverlayStyle(
    systemStatusBarContrastEnforced: false,
    statusBarColor: Colors.white,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
    //
    systemNavigationBarColor: Colors.white,
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarDividerColor: Colors.transparent,
  );
}
