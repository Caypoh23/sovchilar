// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:sovchilar/utils/custom_widgets/loader.dart';

class ModalProgressHud extends StatelessWidget {
  //
  final Widget child;
  final bool isLoading;

  const ModalProgressHud({
    super.key,
    required this.child,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [child, if (isLoading) const LoaderWidget()],
    );
  }
}
