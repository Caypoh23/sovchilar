// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

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
  final bool autofocus;
  final bool isRequired;

  const PhoneTextField({
    super.key,
    required this.controller,
    this.onChanged,
    this.labelText,
    this.initialValue,
    //
    this.enabled = true,
    this.autofocus = false,
    this.isRequired = false,
  });

  @override
  Widget build(BuildContext context) {
    final mask = PhoneInputFormatter();

    return MyTextField(
      key: key,
      enabled: enabled,
      autofocus: autofocus,
      controller: controller,
      inputFormatters: [mask],
      keyboardType: TextInputType.phone,
      labelText: labelText ?? 'strPhoneNumber'.tr(),
      initialValue: MyStringHelper.phoneMask(initialValue),
      validator: (value) => PhoneNumberValidate.validateMobile(value),
    );
  }
}
