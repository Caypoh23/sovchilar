// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:sovchilar/utils/media_helper.dart';

class MyNoAppBar extends StatelessWidget implements PreferredSizeWidget {
  //
  final bool isLight;
  final Color backgroundColor;

  final Color statusBarColor;

  const MyNoAppBar({
    super.key,
    this.isLight = false,
    this.backgroundColor = Colors.transparent,
    this.statusBarColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 0,
      backgroundColor: backgroundColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: statusBarColor,
        systemStatusBarContrastEnforced: false,
        statusBarBrightness: isLight ? Brightness.dark : Brightness.light,
        statusBarIconBrightness: isLight ? Brightness.light : Brightness.dark,
      ),
    );
  }

  @override
  Size get preferredSize => Size(MediaHelper.width, 0);
}
