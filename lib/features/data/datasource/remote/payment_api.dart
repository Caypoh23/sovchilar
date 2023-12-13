// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/core/network/api_service.dart';
import 'package:sovchilar/core/network/network_constants.dart';
import 'package:sovchilar/features/data/model/credit_card/request/credit_card_request_model.dart';
import 'package:sovchilar/features/data/model/payment/reponse/payment_response_model.dart';

abstract class PaymentApi {
  //
  Future<int> fetchPrice();

  Future<PaymentResponseModel> addPayment(CreditCardRequestModel model);
  Future<void> confirmPayment(int sessionId, int otp);
}

@LazySingleton(as: PaymentApi)
class PaymentApiImpl implements PaymentApi {
  //
  final AppApi api;

  PaymentApiImpl(this.api);

  //
  @override
  Future<int> fetchPrice() async {
    try {
      final res = await api.get(NetworkConstants.price);
      return res['price'];
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PaymentResponseModel> addPayment(CreditCardRequestModel model) async {
    try {
      final res = await api.post(
        NetworkConstants.payment,
        data: model.toJson(),
      );
      return PaymentResponseModel.fromJson(res['result']);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> confirmPayment(int sessionId, int otp) async {
    try {
      await api.post(
        NetworkConstants.confirmPayment,
        data: {
          'session': sessionId,
          'otp': otp,
        },
      );
    } catch (e) {
      rethrow;
    }
  }
}
