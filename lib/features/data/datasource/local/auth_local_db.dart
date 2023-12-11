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

  void setUserName(String name);

  String getUserName();

  void setUserId(int id);

  int getUserId();

  void setUserPhone(String phone);

  String getUserPhone();
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
    return box.get(StorageConstants.userId, defaultValue: -1);
  }

  @override
  void setUserId(int id) {
    final box = Hive.box(StorageConstants.appBox);
    box.put(StorageConstants.userId, id);
  }

  @override
  String getUserName() {
    final box = Hive.box(StorageConstants.appBox);
    return box.get(StorageConstants.userName, defaultValue: '');
  }

  @override
  void setUserName(String name) {
    final box = Hive.box(StorageConstants.appBox);
    box.put(StorageConstants.userName, name);
  }

  @override
  String getUserPhone() {
    final box = Hive.box(StorageConstants.appBox);
    return box.get(StorageConstants.userPhone, defaultValue: '');
  }

  @override
  void setUserPhone(String phone) {
    final box = Hive.box(StorageConstants.appBox);
    box.put(StorageConstants.userPhone, phone);
  }
}
