// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

// Project imports:
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/features/data/model/user/gender/gender_enum.dart';
import 'package:sovchilar/features/data/model/user/marital_status/marital_status_enum.dart';

part 'ad_response_model.freezed.dart';
part 'ad_response_model.g.dart';

@freezed
@HiveType(typeId: 2)
class AdResponseModel with _$AdResponseModel {
  //
  const AdResponseModel._();

  const factory AdResponseModel({
    @HiveField(0) int? userId,
    @HiveField(1) String? name,
    @HiveField(2) int? age,
    @HiveField(3) String? nationality,
    @HiveField(4) MaritalStatus? marriageStatus,
    @HiveField(5) bool? children,
    @HiveField(6) int? fromAge,
    @HiveField(7) int? tillAge,
    @HiveField(8) String? telegram,
    @HiveField(9) String? phoneNumber,
    @HiveField(10) String? city,
    @HiveField(11) String? country,
    @HiveField(12) String? moreInfo,
    @HiveField(13) bool? moderated,
    @HiveField(14) Gender? gender,
    @HiveField(15) int? id,
  }) = _AdResponseModel;

  String get nameAge => '${name ?? ''}, ${age ?? ''} ${MyStrings.yearsOld}';
  String get address => '$city, $country';
  String get ageLimit => '$fromAge - $tillAge';

  String get maritalChildrenStatus {
    if (children == true) {
      return '${marriageStatus?.name ?? ''}, ${MyStrings.haveChildren}';
    } else {
      return '${marriageStatus?.name ?? ''}, ${MyStrings.noChildren}';
    }
  }

  factory AdResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AdResponseModelFromJson(json);
}

@freezed
@HiveType(typeId: 3)
class AdResponseListModel with _$AdResponseListModel {
  //
  const factory AdResponseListModel({
    @HiveField(0) @JsonKey(name: 'personals') List<AdResponseModel>? userList,
  }) = _AdResponseListModel;

  factory AdResponseListModel.fromJson(Map<String, dynamic> json) =>
      _$AdResponseListModelFromJson(json);
}
