// Flutter imports:
import 'package:flutter/material.dart';

class MediaHelper {
  //
  MediaHelper._();

  static late Size size;

  static late double width;
  static late double height;
  static late double top, bottom, vertical;

  static Size? appBarSize;

  static init(BuildContext context) {
    final media = MediaQuery.of(context);

    size = media.size;
    width = size.width;
    height = size.height;
    bottom = media.viewPadding.bottom;
    vertical = media.viewPadding.vertical;
    appBarSize = Size(MediaHelper.width, 60);
  }

  static keybord(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom;
  }
}
