// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:sovchilar/config/values/duration_constants.dart';

class MyInfocard extends StatelessWidget {
  //
  final List<Widget> children;

  final Color backgroundColor;

  final EdgeInsets margin;
  final EdgeInsets padding;

  final double? width;
  final double? height;
  final double borderRadius;

  const MyInfocard({
    super.key,
    required this.children,
    //
    this.backgroundColor = Colors.white,
    //
    this.margin = EdgeInsets.zero,
    this.padding = const EdgeInsets.symmetric(
      vertical: 24,
      horizontal: 20,
    ),
    //
    this.width,
    this.height,
    this.borderRadius = 8,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: margin,
      padding: padding,
      width: width,
      height: height,
      curve: Curves.easeInOut,
      duration: MyDurations.ms250,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(
          borderRadius,
        ),
      ),
      child: Column(
        children: [
          ...children,
        ],
      ),
    );
  }
}
