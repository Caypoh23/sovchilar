// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'default_text_field.dart';

class NameTextField extends StatelessWidget {
  //
  final String labelText;
  final String? initialValue;

  final TextEditingController controller;

  final FocusNode? focusNode;
  final int maxLines;

  final bool enabled;
  final bool autofocus;
  final bool isRequired;

  const NameTextField({
    super.key,
    required this.labelText,
    required this.controller,
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
      labelText: labelText,
      autoFocus: autofocus,
      focusNode: focusNode,
      controller: controller,
      isRequired: isRequired,
      initialValue: initialValue,
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.words,
    );
  }
}
