// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'default_dropdown_text_field.dart';

class PickerTextField extends StatelessWidget {
  //
  final String? labelText;

  final String? initialValue;
  final List<String> items;

  final Function(String?)? onChanged;

  final bool enabled;
  final bool isRequired;

  const PickerTextField({
    super.key,
    required this.labelText,
    required this.items,
    required this.onChanged,
    //
    this.initialValue,
    //
    this.enabled = true,
    this.isRequired = true,
  });

  @override
  Widget build(BuildContext context) {
    return MyDropdownTextField(
      enabled: enabled,
      onChanged: onChanged,
      labelText: labelText,
      isRequired: isRequired,
      initialValue: initialValue,
      items: items
          .map(
            (item) => DropdownMenuItem(
              value: item,
              child: Text(
                item,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          )
          .toList(),
    );
  }
}
