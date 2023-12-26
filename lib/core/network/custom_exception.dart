// Package imports:
import 'package:dio/dio.dart';

class TokenExpiredException extends DioException {
  final String name;

  TokenExpiredException({
    required this.name,
    required super.requestOptions,
  });
}
