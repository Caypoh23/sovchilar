// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/features/data/datasource/local/profile_local_db.dart';
import 'package:sovchilar/features/data/datasource/remote/payment_api.dart';
import 'package:sovchilar/features/data/model/credit_card/request/credit_card_request_model.dart';
import 'package:sovchilar/features/data/model/payment/reponse/payment_response_model.dart';

abstract class PaymentRepository {
  ///
  /// Remote API
  ///
  Future<int> fetchPrice();

  Future<PaymentResponseModel> addPayment(CreditCardRequestModel model);
  Future<void> confirmPayment(String sessionId, String otp);

  ///
  /// Local
  ///
  int getPrice();
  void setPrice(int price);
}

@LazySingleton(as: PaymentRepository)
class PaymentRepositoryImpl implements PaymentRepository {
  //
  final PaymentApi api;
  final ProfileLocalStorage localStorage;

  PaymentRepositoryImpl(this.api, this.localStorage);

  @override
  Future<int> fetchPrice() async {
    try {
      return await api.fetchPrice();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PaymentResponseModel> addPayment(CreditCardRequestModel model) async {
    try {
      return await api.addPayment(model);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> confirmPayment(String sessionId, String otp) async {
    try {
      await api.confirmPayment(sessionId, otp);
    } catch (e) {
      rethrow;
    }
  }

  //

  @override
  int getPrice() => localStorage.getPrice();

  @override
  void setPrice(int price) => localStorage.setPrice(price);
}
