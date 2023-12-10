// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'loader.dart';

class MyLoadingState extends StatelessWidget {
  //
  final Widget child;
  final bool isLoading;

  const MyLoadingState({
    super.key,
    required this.child,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading) ...[
          const LoaderWidget(),
        ],
      ],
    );
  }
}
