// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:sovchilar/core/network/network_constants.dart';
import 'custom_error.dart';

class CustomInterceptor extends Interceptor {
  //
  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.receiveTimeout) {
      // NavigationService.showErrorToast('common.low_internet_connection'.tr());
      return handler.next(err);
    }
    int statusCode = (err.response?.statusCode ?? 0);
    if (statusCode == 400 &&
        err.requestOptions.path == NetworkConstants.createReport) {
      final data = err.response!.data;
      final list = data['active_accidents'];

      return handler.next(HaveActiveReportException(
          accidentId: list[0], requestOptions: err.requestOptions));
    } else if (statusCode >= 400 && statusCode <= 500) {
      // NavigationService.showErrorToast((text).toString());
    }

    return handler.next(err);
  }
}
