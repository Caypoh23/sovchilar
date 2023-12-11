// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

// Project imports:
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/features/data/model/user/gender/gender_enum.dart';
import 'package:sovchilar/features/data/model/user/marital_status/marital_status_enum.dart';

part 'user_response_model.freezed.dart';
part 'user_response_model.g.dart';

@freezed
@HiveType(typeId: 2)
class UserResponseModel with _$UserResponseModel {
  //
  const UserResponseModel._();

  const factory UserResponseModel({
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
  }) = _UserResponseModel;

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

  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);
}

@freezed
@HiveType(typeId: 3)
class UserResponseListModel with _$UserResponseListModel {
  //
  const factory UserResponseListModel({
    @HiveField(0) @JsonKey(name: 'personals') List<UserResponseModel>? userList,
  }) = _UserListModel;

  factory UserResponseListModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseListModelFromJson(json);
}
