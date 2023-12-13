// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdRequestModelImpl _$$AdRequestModelImplFromJson(Map<String, dynamic> json) =>
    _$AdRequestModelImpl(
      name: json['name'] as String?,
      age: json['age'] as int?,
      nationality: json['nationality'] as String?,
      marriageStatus: json['marriageStatus'] as String?,
      children: json['children'] as bool?,
      fromAge: json['fromAge'] as int?,
      tillAge: json['tillAge'] as int?,
      telegram: json['telegram'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      moreInfo: json['moreInfo'] as String?,
      moderated: json['moderated'] as bool?,
      gender: json['gender'] as String?,
    );

Map<String, dynamic> _$$AdRequestModelImplToJson(
        _$AdRequestModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'nationality': instance.nationality,
      'marriageStatus': instance.marriageStatus,
      'children': instance.children,
      'fromAge': instance.fromAge,
      'tillAge': instance.tillAge,
      'telegram': instance.telegram,
      'phoneNumber': instance.phoneNumber,
      'city': instance.city,
      'country': instance.country,
      'moreInfo': instance.moreInfo,
      'moderated': instance.moderated,
      'gender': instance.gender,
    };
