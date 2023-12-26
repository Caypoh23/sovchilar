// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/features/data/datasource/local/auth_local_db.dart';
import 'package:sovchilar/features/data/datasource/remote/auth_api.dart';
import 'package:sovchilar/features/data/model/login/response/login_response_model.dart';

abstract class AuthRepository {
  ///
  /// Remote API
  ///
  Future<LoginResponseModel> login({
    required String telegram,
    required String password,
  });

  ///
  /// Local
  ///
  String getToken();
  void setToken(String token);

  //

  String getUsername();
  void setUsername(String username);

  String getPassword();
  void setPassword(String password);

  //

  int getUserId();
  void setUserId(int userId);
}

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  //
  final AuthApi api;
  final AuthLocalStorage localStorage;

  AuthRepositoryImpl(this.api, this.localStorage);

  //

  @override
  Future<LoginResponseModel> login({
    required String telegram,
    required String password,
  }) async {
    try {
      return await api.login(
        telegram: telegram,
        password: password,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  String getToken() => localStorage.getToken();

  @override
  void setToken(String token) => localStorage.setToken(token);

  @override
  String getUsername() => localStorage.getUsername();

  @override
  void setUsername(String username) => localStorage.setUsername(username);

  @override
  String getPassword() => localStorage.getPassword();

  @override
  void setPassword(String password) => localStorage.setPassword(password);

  @override
  int getUserId() => localStorage.getUserId();

  @override
  void setUserId(int userId) => localStorage.setUserId(userId);
}
