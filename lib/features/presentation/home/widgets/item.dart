// Flutter imports:
import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  //
  final String title;
  final String description;

  final VoidCallback? onTap;

  const HomeItem({
    super.key,
    required this.title,
    required this.description,
    //
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        const SizedBox(height: 4),
        GestureDetector(
          onTap: onTap,
          child: Text(
            description,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
          ),
        ),
      ],
    );
  }
}
