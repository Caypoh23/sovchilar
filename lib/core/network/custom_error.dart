// Package imports:
import 'package:dio/dio.dart';

class HaveActiveReportException extends DioException {
  final int accidentId;

  HaveActiveReportException(
      {required this.accidentId, required super.requestOptions});
}
