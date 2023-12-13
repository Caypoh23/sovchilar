// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/core/network/api_service.dart';
import 'package:sovchilar/core/network/network_constants.dart';
import 'package:sovchilar/features/data/model/user/user_response/user_response_model.dart';

abstract class UserApi {
  //
  Future<UserResponseListModel> fetchList([int page]);

  ///
  /// Local
  ///
}

@LazySingleton(as: UserApi)
class UserApiImpl implements UserApi {
  //
  final AppApi api;

  UserApiImpl(this.api);

  @override
  Future<UserResponseListModel> fetchList([int page = 1]) async {
    try {
      final res = await api.get(
        NetworkConstants.personals(page),
      );
      return UserResponseListModel.fromJson(res);
    } catch (e) {
      rethrow;
    }
  }
}
