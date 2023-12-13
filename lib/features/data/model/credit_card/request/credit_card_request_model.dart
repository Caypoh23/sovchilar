// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_card_request_model.freezed.dart';
part 'credit_card_request_model.g.dart';

@freezed
class CreditCardRequestModel with _$CreditCardRequestModel {
  //
  const factory CreditCardRequestModel({
    String? cardNumber,
    String? expireDate,
  }) = _CreditCardRequestModel;

  factory CreditCardRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreditCardRequestModelFromJson(json);
}
