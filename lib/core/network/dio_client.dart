// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'interceptor.dart';

class DioClient {
  static Dio myDio = _createDio();
  static Dio? _myDio;

  static final myDioOptions = BaseOptions(
      baseUrl: 'http://testingsovchilar.urinboev.uz/',
      connectTimeout: const Duration(minutes: 2),
      receiveTimeout: const Duration(minutes: 2),
      // queryParameters: {
      //   'lang': NavigationService
      //           .navigatorKey.currentContext?.locale.languageCode ??
      //       'ru'
      // },
      // headers: {'Content-Type': 'application/json; charset=utf-8'},
      // headers: {'Content-Type': 'charset=utf-8'},
      responseType: ResponseType.json);

  static final logInterceptor = LogInterceptor(
    request: true,
    responseBody: true,
    requestBody: true,
    requestHeader: true,
  );

  static Dio _createDio() {
    _myDio ??= Dio(myDioOptions)
      ..interceptors.addAll([CustomInterceptor(), logInterceptor]);
    return _myDio!;
  }

  static void toggleMultipartFormData(bool isOn) {
    if (isOn) {
      myDio.options.headers['Content-Type'] = 'multipart/form-data';
    } else {
      myDio.options.headers['Content-Type'] = 'application/json; charset=utf-8';
    }
  }

  static void setLanguage(String? languageCode) {
    if (languageCode == null) {
      myDio.options.headers.remove('Accept-Language');
    } else {
      myDio.options.headers['Accept-Language'] = languageCode;
    }
  }

  static void setToken(String? token) {
    if (token == null) {
      myDio.options.headers.remove('Authorization');
    } else {
      myDio.options.headers['Authorization'] = 'Bearer $token';
    }
  }
}
