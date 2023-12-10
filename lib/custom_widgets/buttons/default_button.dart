// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:sovchilar/config/values/color_constants.dart';
import 'package:sovchilar/custom_widgets/loading/loader.dart';
import 'default_ink_well.dart';

class MyButton extends StatelessWidget {
  //
  final String label;
  final TextStyle labelStyle;

  final Color enabledColor;
  final Color disabledColor;
  final Color? color;

  final void Function() onTap;
  final void Function()? onLongPress;

  final Widget? iconLeft;
  final Widget? iconRight;

  final EdgeInsets padding;
  final EdgeInsets margin;

  final bool isLoading;
  final bool enable;

  final double? width;

  //

  const MyButton.primary({
    super.key,
    required this.label,
    required this.onTap,
    //
    this.labelStyle = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    //
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    //
    this.padding = const EdgeInsets.symmetric(
      vertical: 12,
      horizontal: 32,
    ),
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
    this.enable = true,
    //
    this.width,
    this.color,
  })  : enabledColor = MyColors.primary,
        disabledColor = MyColors.grey;

  const MyButton.secondary({
    super.key,
    required this.label,
    required this.onTap,
    this.labelStyle = const TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    ),
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    //
    this.padding = const EdgeInsets.symmetric(
      vertical: 12,
      horizontal: 32,
    ),
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
    this.enable = true,
    //
    this.width,
    this.color,
  })  : enabledColor = Colors.white,
        disabledColor = MyColors.grey;

  const MyButton.tertiary({
    super.key,
    required this.label,
    required this.onTap,
    this.labelStyle = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    //
    this.padding = const EdgeInsets.symmetric(
      vertical: 12,
      horizontal: 32,
    ),
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
    this.enable = true,
    //
    this.width,
    this.color,
  })  : enabledColor = MyColors.grey,
        disabledColor = MyColors.grey;

  //

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(microseconds: 250),
      child: MyInkWell(
        width: width,
        margin: margin,
        padding: padding,
        borderRadius: BorderRadius.circular(50),
        onTap: enable && !isLoading ? onTap : null,
        color: color ?? (enable || isLoading ? enabledColor : disabledColor),
        child: Stack(
          children: [
            if (!isLoading)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (iconLeft != null) ...[
                    iconLeft!,
                    const SizedBox(width: 8),
                  ],
                  Text(
                    label,
                    style: labelStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (iconRight != null) ...[
                    const SizedBox(width: 8),
                    iconRight!,
                  ],
                ],
              )
            else
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 18,
                    width: 18,
                    child: LoaderWidget(),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
