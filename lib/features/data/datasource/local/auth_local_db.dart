// Package imports:
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'storage_constants.dart';

abstract class AuthLocalStorage {
  String getToken();
  void setToken(String token);

  String getRefreshToken();
  void setRefreshToken(String token);

  int getUserId();
  void setUserId(int userId);
}

@LazySingleton(as: AuthLocalStorage)
class AuthLocalStorageImpl implements AuthLocalStorage {
  //
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
