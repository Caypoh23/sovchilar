// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'color_constants.dart';

class MyGradients {
  ///
  static const LinearGradient primary = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      MyColors.tertiary,
      MyColors.onSecondary,
    ],
  );

  static const LinearGradient secondary = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      MyColors.primaryContainer,
      MyColors.onPrimaryContainer,
    ],
  );
}
