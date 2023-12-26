// Package imports:
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'storage_constants.dart';

abstract class AuthLocalStorage {
  /// Token
  String getToken();
  void setToken(String token);

  String getRefreshToken();
  void setRefreshToken(String token);

  /// User Credentials

  String getUsername();
  void setUsername(String username);

  String getPassword();
  void setPassword(String password);

  /// UserId

  int getUserId();
  void setUserId(int userId);
}

@LazySingleton(as: AuthLocalStorage)
class AuthLocalStorageImpl implements AuthLocalStorage {
  ///
  /// Token
  ///
  @override
  String getToken() {
    final box = Hive.box(StorageConstants.appBox);
    return box.get(StorageConstants.token, defaultValue: '');
  }

  @override
  void setToken(String token) {
    final box = Hive.box(StorageConstants.appBox);
    box.put(StorageConstants.token, token);
  }

  @override
  String getRefreshToken() {
    final box = Hive.box(StorageConstants.appBox);
    return box.get(StorageConstants.refreshToken, defaultValue: '');
  }

  @override
  void setRefreshToken(String token) {
    final box = Hive.box(StorageConstants.appBox);
    box.put(StorageConstants.refreshToken, token);
  }

  /// User Credentials TODO: implement refresh token instead of username and password

  @override
  String getUsername() {
    final box = Hive.box(StorageConstants.appBox);
    return box.get(StorageConstants.username, defaultValue: '');
  }

  @override
  void setUsername(String username) {
    final box = Hive.box(StorageConstants.appBox);
    box.put(StorageConstants.username, username);
  }

  @override
  String getPassword() {
    final box = Hive.box(StorageConstants.appBox);
    return box.get(StorageConstants.password, defaultValue: '');
  }

  @override
  void setPassword(String password) {
    final box = Hive.box(StorageConstants.appBox);
    box.put(StorageConstants.password, password);
  }

  ///
  /// User Id
  ///

  @override
  int getUserId() {
    final box = Hive.box(StorageConstants.appBox);
    return box.get(StorageConstants.userId);
  }

  @override
  void setUserId(int userId) {
    final box = Hive.box(StorageConstants.appBox);
    box.put(StorageConstants.userId, userId);
  }
}
