// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentResponseModelImpl _$$PaymentResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentResponseModelImpl(
      transactionId: json['transactionId'] as int?,
      otpSentPhone: json['otpSentPhone'] as String?,
      sessionId: json['session'] as int?,
    );

Map<String, dynamic> _$$PaymentResponseModelImplToJson(
        _$PaymentResponseModelImpl instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'otpSentPhone': instance.otpSentPhone,
      'session': instance.sessionId,
    };
