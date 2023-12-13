// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_request_model.freezed.dart';
part 'ad_request_model.g.dart';

@freezed
class AdRequestModel with _$AdRequestModel {
  //
  const factory AdRequestModel({
    String? name,
    int? age,
    String? nationality,
    String? marriageStatus,
    bool? children,
    int? fromAge,
    int? tillAge,
    String? telegram,
    String? phoneNumber,
    String? city,
    String? country,
    String? moreInfo,
    bool? moderated,
    String? gender,
  }) = _AdRequestModel;

  factory AdRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AdRequestModelFromJson(json);
}
