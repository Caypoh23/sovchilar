// Package imports:
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'storage_constants.dart';

abstract class AuthLocalStorage {
  void setToken(String token);
  String getToken();

  void setRefreshToken(String token);
  String getRefreshToken();
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
}
