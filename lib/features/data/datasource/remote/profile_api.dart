// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/core/network/api_service.dart';
import 'package:sovchilar/core/network/network_constants.dart';
import 'package:sovchilar/features/data/model/profile/response/profile_response_model.dart';

abstract class AuthApi {
  //
  Future<ProfileResponseModel> fetchProfile();
  Future<void> deleteProfile();
}

@LazySingleton(as: AuthApi)
class AuthApiImpl implements AuthApi {
  //
  final AppApi api;

  AuthApiImpl(this.api);

  //
  @override
  Future<ProfileResponseModel> fetchProfile() async {
    try {
      final res = await api.get(NetworkConstants.getProfile);
      return ProfileResponseModel.fromJson(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteProfile() async {
    try {
      await api.delete(NetworkConstants.deleteProfile);
    } catch (e) {
      rethrow;
    }
  }
}
