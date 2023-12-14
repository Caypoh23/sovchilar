// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/utils/validator.dart';
import 'default_text_field.dart';

class PasswordTextField extends StatefulWidget {
  //
  final String? labelText;
  final String? initialValue;

  final TextEditingController controller;

  final FocusNode? focusNode;
  final int maxLines;

  final bool enabled;
  final bool autofocus;
  final bool isRequired;

  const PasswordTextField({
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
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  //
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return MyTextField(
      enabled: widget.enabled,
      obscureText: _obscureText,
      maxLines: widget.maxLines,
      autoFocus: widget.autofocus,
      focusNode: widget.focusNode,
      controller: widget.controller,
      isRequired: widget.isRequired,
      initialValue: widget.initialValue,
      keyboardType: TextInputType.visiblePassword,
      labelText: widget.labelText ?? MyStrings.password,
      validator: PasswordFormValidator.validateStrongPassword,
      suffixIcon: IconButton(
        icon: Icon(
          !_obscureText ? Icons.visibility : Icons.visibility_off,
          color: Theme.of(context).colorScheme.background,
        ),
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
      ),
    );
  }
}
