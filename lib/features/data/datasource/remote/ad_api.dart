// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/core/network/api_service.dart';
import 'package:sovchilar/core/network/network_constants.dart';
import 'package:sovchilar/features/data/model/ad/request/ad_request_model.dart';
import 'package:sovchilar/features/data/model/user/response/ad_response_model.dart';

abstract class AdApi {
  //
  Future<AdResponseListModel> fetchList([int page]);
  Future<void> postAd(AdRequestModel model);

  ///
  /// Local
  ///
}

@LazySingleton(as: AdApi)
class AdApiImpl implements AdApi {
  //
  final AppApi api;

  AdApiImpl(this.api);

  @override
  Future<AdResponseListModel> fetchList([int page = 1]) async {
    try {
      final res = await api.get(
        NetworkConstants.ads(page),
      );
      return AdResponseListModel.fromJson(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> postAd(AdRequestModel model) async {
    try {
      await api.post(
        NetworkConstants.postAd,
        data: model.toJson(),
      );
    } catch (e) {
      rethrow;
    }
  }
}
