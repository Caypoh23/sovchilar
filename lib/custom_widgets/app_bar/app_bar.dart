// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:sovchilar/config/assets/icon_constants.dart';
import 'package:sovchilar/utils/media_helper.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  //
  final bool canPop;
  final String title;
  final List<Widget>? actions;

  final void Function()? onTap;
  final void Function()? onPop;

  const MyAppBar({
    super.key,
    required this.title,
    this.canPop = true,
    this.actions,
    this.onTap,
    this.onPop,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.background,
          ),
        ),
      ),
      child: AppBar(
        elevation: 0.0,
        actions: actions,
        leadingWidth: 40,
        centerTitle: true,
        backgroundColor: Colors.white,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
          systemStatusBarContrastEnforced: false,
        ),
        automaticallyImplyLeading: false,
        leading: canPop
            ? Padding(
                padding: const EdgeInsets.only(left: 16),
                child: GestureDetector(
                  onTap: onPop ?? () => context.router.pop(),
                  child: SvgPicture.asset(
                    MyIcons.arrowLeft,
                    width: 24,
                    height: 24,
                  ),
                ),
              )
            : null,
        title: GestureDetector(
          onTap: onTap,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              if (onTap != null) ...[
                const SizedBox(width: 8),
                SvgPicture.asset(
                  MyIcons.arrowLeft,
                  width: 16,
                  height: 16,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => MediaHelper.appBarSize!;
}
