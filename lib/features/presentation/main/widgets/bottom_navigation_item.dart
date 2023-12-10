// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

class MainBottomNavigationItem extends StatelessWidget {
  //
  final String icon;

  const MainBottomNavigationItem({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      selectedIcon: SvgPicture.asset(
        icon,
        colorFilter: const ColorFilter.mode(
          Colors.white,
          BlendMode.srcIn,
        ),
      ),
      icon: SvgPicture.asset(
        icon,
      ),
      label: '',
    );
  }
}
