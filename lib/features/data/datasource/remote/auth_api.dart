// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/core/network/api_service.dart';
import 'package:sovchilar/core/network/network_constants.dart';
import 'package:sovchilar/features/data/model/login/response/login_response_model.dart';

abstract class AuthApi {
  //
  Future<LoginResponseModel> login({
    required String telegram,
    required String password,
  });
}

@LazySingleton(as: AuthApi)
class AuthApiImpl implements AuthApi {
  //
  final AppApi api;

  AuthApiImpl(this.api);

  //
  @override
  Future<LoginResponseModel> login({
    required String telegram,
    required String password,
  }) async {
    try {
      final res = await api.post(
        NetworkConstants.auth,
        data: {
          'telegram': telegram,
          'password': password,
        },
      );
      return LoginResponseModel.fromJson(res);
    } catch (e) {
      rethrow;
    }
  }
}
