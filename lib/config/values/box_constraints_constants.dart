// Flutter imports:
import 'package:flutter/material.dart';

abstract class MyBoxConstraints {
  //
  static const all48 = BoxConstraints(
    minWidth: 48,
    minHeight: 48,
    maxWidth: 48,
  );

  static const all64 = BoxConstraints(
    minWidth: 64,
    minHeight: 64,
    maxWidth: 64,
    maxHeight: 64,
  );

  static const h84v64 = BoxConstraints(
    minWidth: 84,
    minHeight: 64,
    maxWidth: 84,
    maxHeight: 64,
  );
}
