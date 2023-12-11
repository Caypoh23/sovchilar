// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/features/data/datasource/remote/user_api.dart';
import 'package:sovchilar/features/data/model/user/user_response/user_response_model.dart';

abstract class UserRepository {
  ///
  /// Remote API
  ///
  Future<UserResponseListModel> fetchList([int page]);
}

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  //
  final UserApi api;

  UserRepositoryImpl(this.api);

  @override
  Future<UserResponseListModel> fetchList([int page = 1]) async {
    try {
      return await api.fetchList(page);
    } catch (e) {
      rethrow;
    }
  }
}
