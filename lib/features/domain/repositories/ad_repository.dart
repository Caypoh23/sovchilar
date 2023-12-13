// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/features/data/datasource/local/ad_local_db.dart';
import 'package:sovchilar/features/data/datasource/remote/ad_api.dart';
import 'package:sovchilar/features/data/model/ad/request/ad_request_model.dart';
import 'package:sovchilar/features/data/model/user/response/ad_response_model.dart';

abstract class AdRepository {
  ///
  /// Remote API
  ///
  Future<AdResponseListModel> fetchList([int page]);
  Future<void> postAd(AdRequestModel model);

  ///
  /// Local
  ///
  List<AdResponseModel> getAds();
  void setAds(List<AdResponseModel> list);
}

@LazySingleton(as: AdRepository)
class AdRepositoryImpl implements AdRepository {
  //
  final AdApi api;
  final AdLocalStorage localStorage;

  AdRepositoryImpl(this.api, this.localStorage);

  @override
  Future<AdResponseListModel> fetchList([int page = 1]) async {
    try {
      return await api.fetchList(page);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> postAd(AdRequestModel model) async {
    try {
      await api.postAd(model);
    } catch (e) {
      rethrow;
    }
  }

  //
  @override
  List<AdResponseModel> getAds() => localStorage.getAds();

  @override
  void setAds(List<AdResponseModel> list) => localStorage.setAds(list);
}
