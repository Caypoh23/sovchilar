// Package imports:
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/features/data/model/user/user_response/user_response_model.dart';
import 'storage_constants.dart';

abstract class UserLocalStorage {
  void setUsers(List<UserResponseModel> users);

  List<UserResponseModel> getUsers();
}

@LazySingleton(as: UserLocalStorage)
class UserLocalStorageImpl implements UserLocalStorage {
  //
  @override
  List<UserResponseModel> getUsers() {
    final box = Hive.box(StorageConstants.appBox);
    return box.get(StorageConstants.users, defaultValue: []);
  }

  @override
  void setUsers(List<UserResponseModel> users) {
    final box = Hive.box(StorageConstants.usersBox);
    box.put(StorageConstants.users, users);
  }
}
