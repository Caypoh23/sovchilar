// Flutter imports:
import 'package:flutter/material.dart';

class MyCheckbox extends StatelessWidget {
  //
  final bool isChecked;
  final String? label;

  final void Function(bool?) onChanged;

  const MyCheckbox({
    super.key,
    required this.isChecked,
    required this.onChanged,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!isChecked),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: Checkbox.adaptive(
              value: isChecked,
              onChanged: onChanged,
              checkColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              side: BorderSide(
                width: 1,
                color: Theme.of(context).colorScheme.primary,
              ),
              activeColor: Theme.of(context).colorScheme.primary,
            ),
          ),
          if (label != null) ...[
            const SizedBox(width: 8),
            Text(
              label!,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ],
      ),
    );
  }
}
