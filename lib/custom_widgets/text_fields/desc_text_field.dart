// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:sovchilar/config/values/strings_constants.dart';
import 'default_text_field.dart';

class DescTextField extends StatelessWidget {
  //
  final String? labelText;
  final String? initialValue;

  final TextEditingController controller;

  final FocusNode? focusNode;
  final int maxLines;

  final bool enabled;
  final bool autofocus;
  final bool isRequired;

  const DescTextField({
    super.key,
    required this.controller,
    this.labelText,
    this.initialValue,
    //
    this.focusNode,
    this.maxLines = 10,
    //
    this.enabled = true,
    this.autofocus = false,
    this.isRequired = false,
  });

  @override
  Widget build(BuildContext context) {
    return MyTextField(
      key: key,
      minLines: 7,
      enabled: enabled,
      maxLines: maxLines,
      autoFocus: autofocus,
      focusNode: focusNode,
      controller: controller,
      isRequired: isRequired,
      initialValue: initialValue,
      keyboardType: TextInputType.text,
      contentPadding: const EdgeInsets.all(16),
      textCapitalization: TextCapitalization.words,
      labelText: labelText ?? MyStrings.additionalInfo,
    );
  }
}
