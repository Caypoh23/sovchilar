// Package imports:
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/features/data/model/user/response/ad_response_model.dart';
import 'storage_constants.dart';

abstract class AdLocalStorage {
  void setAds(List<AdResponseModel> users);

  List<AdResponseModel> getAds();

  void setMyAds(List<AdResponseModel> users);

  List<AdResponseModel> getMyAds();
}

@LazySingleton(as: AdLocalStorage)
class AdLocalStorageImpl implements AdLocalStorage {
  //
  @override
  List<AdResponseModel> getAds() {
    final box = Hive.box(StorageConstants.appBox);
    return box.get(StorageConstants.ads, defaultValue: []);
  }

  @override
  void setAds(List<AdResponseModel> users) {
    final box = Hive.box(StorageConstants.adsBox);
    box.put(StorageConstants.ads, users);
  }

  @override
  List<AdResponseModel> getMyAds() {
    final box = Hive.box(StorageConstants.adsBox);
    return box.get(StorageConstants.myAds, defaultValue: []);
  }

  @override
  void setMyAds(List<AdResponseModel> users) {
    final box = Hive.box(StorageConstants.adsBox);
    box.put(StorageConstants.myAds, users);
  }
}
