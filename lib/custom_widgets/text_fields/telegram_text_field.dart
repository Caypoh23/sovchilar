// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/utils/string_helper.dart';
import 'default_text_field.dart';

class TelegramTextField extends StatelessWidget {
  //
  final String? labelText;
  final String? initialValue;

  final TextEditingController controller;

  final FocusNode? focusNode;
  final int maxLines;

  final bool enabled;
  final bool autofocus;
  final bool isRequired;

  const TelegramTextField({
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
      canClear: true,
      enabled: enabled,
      maxLines: maxLines,
      autoFocus: autofocus,
      focusNode: focusNode,
      controller: controller,
      isRequired: isRequired,
      initialValue: initialValue,
      keyboardType: TextInputType.text,
      labelText: labelText ?? MyStrings.yourTelegram,
      inputFormatters: [MyStringHelper.telegramFormatter()],
    );
  }
}
