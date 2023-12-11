// Package imports:
import 'package:dio/dio.dart';

// Project imports:

class CustomInterceptor extends Interceptor {
  //
  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    int statusCode = (err.response?.statusCode ?? 0);
    if (err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.receiveTimeout) {
      // NavigationService.showErrorToast('common.low_internet_connection'.tr());
      return handler.next(err);
    } else if (statusCode >= 400 && statusCode <= 500) {
      // NavigationService.showErrorToast((text).toString());
    }

    return handler.next(err);
  }
}
