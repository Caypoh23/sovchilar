// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_response_model.freezed.dart';
part 'payment_response_model.g.dart';

@freezed
class PaymentResponseModel with _$PaymentResponseModel {
  //
  const factory PaymentResponseModel({
    String? transactionId,
    String? otpSentPhone,
    @JsonKey(name: 'session') String? sessionId,
  }) = _PaymentResponseModel;

  factory PaymentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseModelFromJson(json);
}
