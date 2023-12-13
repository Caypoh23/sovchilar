// Package imports:
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:intl/intl.dart';

abstract class MyStringHelper {
  //
  static String removeNonNumbers(String data) {
    return data.replaceAll(RegExp(r'\D'), '');
  }

  static String removeSpaces(String data) {
    return data.replaceAll(' ', '');
  }

  static String? obfuscateCardNumber(String? data) {
    if (data == null) return null;

    final text = removeNonNumbers(data);
    if (text.length < 4) return data;

    final first = text.substring(0, 4);
    final last = text.substring(text.length - 2, text.length);

    return '$first **** **$last';
  }

  static String? formatAsExpiryDate(String? data) {
    if (data == null) return null;

    final text = removeNonNumbers(data);
    if (text.length < 4) return data;

    final month = text.substring(0, 2);
    final year = text.substring(2, 4);

    return '$year$month';
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
