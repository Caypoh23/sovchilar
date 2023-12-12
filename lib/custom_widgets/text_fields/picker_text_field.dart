// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:sovchilar/config/values/color_constants.dart';
import 'default_text_field.dart';

class PickerTextField extends StatelessWidget {
  //
  final String? labelText;

  final TextEditingController controller;

  final Widget? suffixIcon;

  final void Function() onTap;

  final int minLines;
  final int maxLines;

  final bool enabled;
  final bool isRequired;

  const PickerTextField({
    super.key,
    required this.labelText,
    required this.controller,
    required this.onTap,
    this.suffixIcon,
    //
    this.minLines = 1,
    this.maxLines = 1,
    //
    this.enabled = true,
    this.isRequired = true,
  });

  @override
  Widget build(BuildContext context) {
    return MyTextField(
      key: key,
      onTap: onTap,
      readOnly: true,
      isRequired: isRequired,
      enabled: enabled,
      minLines: minLines,
      maxLines: maxLines,
      labelText: labelText,
      controller: controller,
      suffixIcon: suffixIcon ?? _suffixIcon,
    );
  }

  Widget get _suffixIcon {
    return const Icon(
      Icons.arrow_drop_down,
      color: MyColors.greyLite,
    );
  }
}
