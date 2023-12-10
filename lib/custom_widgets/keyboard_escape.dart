// Flutter imports:
import 'package:flutter/material.dart';

class KeyboardEscape extends StatelessWidget {
  final Widget child;
  final void Function()? onUnFocus;

  const KeyboardEscape({
    super.key,
    required this.child,
    this.onUnFocus,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
        if (onUnFocus != null) {
          onUnFocus!();
        }
      },
      child: child,
    );
  }
}
