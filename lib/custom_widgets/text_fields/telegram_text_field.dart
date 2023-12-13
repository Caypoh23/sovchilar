// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:sovchilar/config/values/strings_constants.dart';
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
      textCapitalization: TextCapitalization.words,
      labelText: labelText ?? MyStrings.yourTelegram,
      inputFormatters: [
        TextInputFormatter.withFunction(
          (oldValue, newValue) {
            if (newValue.text.isNotEmpty && newValue.text[0] != '@') {
              return TextEditingValue(
                text: '@${newValue.text}',
              );
            }
            return newValue;
          },
        ),
      ],
    );
  }
}
