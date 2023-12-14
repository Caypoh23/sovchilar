// Package imports:
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

// Project imports:
import 'package:sovchilar/config/router/navigation_service.dart';
import 'package:sovchilar/core/di/service_locator.dart';

class CustomInterceptor extends Interceptor {
  //
  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.receiveTimeout) {
      getIt<NavigationService>()
          .showErrorToast('common.low_internet_connection'.tr());
      return handler.next(err);
    } else {
      final text = err.response?.data?['message'] ??
          err.response?.data?['error']['errorMessage'];
      getIt<NavigationService>().showErrorToast(text.toString());
    }

    return handler.next(err);
  }
}
