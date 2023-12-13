// Package imports:
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'storage_constants.dart';

abstract class ProfileLocalStorage {
  int getPrice();
  void setPrice(int price);

  String getTelegram();
  void setTelegram(String telegram);
}

@LazySingleton(as: ProfileLocalStorage)
class ProfileLocalStorageImpl implements ProfileLocalStorage {
  //
  @override
  int getPrice() {
    final box = Hive.box(StorageConstants.profileBox);
    return box.get(StorageConstants.price, defaultValue: '');
  }

  @override
  void setPrice(int price) {
    final box = Hive.box(StorageConstants.profileBox);
    box.put(StorageConstants.price, price);
  }

  //

  @override
  String getTelegram() {
    final box = Hive.box(StorageConstants.profileBox);
    return box.get(StorageConstants.telegram, defaultValue: '');
  }

  @override
  void setTelegram(String telegram) {
    final box = Hive.box(StorageConstants.appBox);
    box.put(StorageConstants.telegram, telegram);
  }
}
