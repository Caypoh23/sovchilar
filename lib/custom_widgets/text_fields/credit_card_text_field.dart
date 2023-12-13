// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

// Project imports:
import 'package:sovchilar/config/assets/image_constants.dart';
import 'package:sovchilar/config/values/color_constants.dart';
import 'package:sovchilar/config/values/strings_constants.dart';
import 'default_text_field.dart';

class CreditCardTextField extends StatelessWidget {
  //
  final String? labelText;
  final String? initialValue;

  final TextEditingController controller;

  final FocusNode? focusNode;
  final int maxLines;

  final bool enabled;
  final bool autofocus;
  final bool isRequired;

  const CreditCardTextField({
    super.key,
    required this.controller,
    this.labelText,
    this.initialValue,
    //
    this.focusNode,
    this.maxLines = 1,
    //
    this.enabled = true,
    this.autofocus = false,
    this.isRequired = true,
  });

  @override
  Widget build(BuildContext context) {
    return MyTextField(
      enabled: enabled,
      maxLines: maxLines,
      autoFocus: autofocus,
      focusNode: focusNode,
      controller: controller,
      isRequired: isRequired,
      prefixIcon: prefixIcon,
      initialValue: initialValue,
      keyboardType: TextInputType.number,
      labelText: labelText ?? MyStrings.cardNumber,
      inputFormatters: [CreditCardNumberInputFormatter()],
    );
  }

  Widget? get prefixIcon {
    if (controller.text.contains('8600')) {
      return Image.asset(
        MyImages.uzcard,
        width: 40,
        height: 40,
      );
    } else if (controller.text.contains('9860')) {
      return Image.asset(
        MyImages.humo,
        width: 40,
        height: 40,
      );
    } else {
      return const Icon(
        Icons.credit_card,
        color: MyColors.grey,
      );
    }
  }
}
