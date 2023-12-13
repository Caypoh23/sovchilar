// Package imports:
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:intl/intl.dart';

abstract class MyStringHelper {
  //
  static String removeNonNumbers(String data) {
    return data.replaceAll(RegExp(r'\D'), '');
  }

  static String phoneMask(String? data) {
    if (data == null) return '';

    String text = removeNonNumbers(data);
    if (!isPhoneValid(text)) return data;

    final mask = formatAsPhoneNumber(text)!;
    return mask;
  }

  static formatNumber(data) {
    final number = data is double ? data : double.tryParse('$data');
    if (number == null) return null;

    final formatter = NumberFormat('#,###');
    return formatter.format(number).replaceAll(',', ' ');
  }

  static String compactNumber(int count) =>
      NumberFormat.compact().format(count);
}

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
