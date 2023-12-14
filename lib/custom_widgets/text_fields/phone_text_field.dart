// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:sovchilar/config/values/strings_constants.dart';

// Project imports:
import 'package:sovchilar/utils/string_helper.dart';
import 'package:sovchilar/utils/validator.dart';
import 'default_text_field.dart';

class PhoneTextField extends StatelessWidget {
  //
  final String? labelText;
  final String? initialValue;
  final TextEditingController controller;

  final void Function(String)? onChanged;

  final bool enabled;
  final bool autoFocus;
  final bool isRequired;

  const PhoneTextField({
    super.key,
    required this.controller,
    this.onChanged,
    this.labelText,
    this.initialValue,
    //
    this.enabled = true,
    this.autoFocus = false,
    this.isRequired = false,
  });

  @override
  Widget build(BuildContext context) {
    final mask = PhoneInputFormatter();

    return MyTextField(
      key: key,
      enabled: enabled,
      autoFocus: autoFocus,
      controller: controller,
      inputFormatters: [mask],
      keyboardType: TextInputType.phone,
      labelText: labelText ?? MyStrings.phoneNumber,
      initialValue: MyStringHelper.phoneMask(initialValue),
      validator: (value) => PhoneNumberValidate.validateMobile(value),
    );
  }
}
