// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policy_holder_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PolicyHolderRequestModelImpl _$$PolicyHolderRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PolicyHolderRequestModelImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      country: json['country'] as String?,
      address: json['address'] as String?,
      postalCode: json['postal_code'] as String?,
      phoneNumber: json['phone_number'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$PolicyHolderRequestModelImplToJson(
        _$PolicyHolderRequestModelImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'country': instance.country,
      'address': instance.address,
      'postal_code': instance.postalCode,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
    };