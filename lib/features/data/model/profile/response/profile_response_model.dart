// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_response_model.freezed.dart';
part 'profile_response_model.g.dart';

@freezed
class ProfileResponseModel with _$ProfileResponseModel {
  //
  const factory ProfileResponseModel({
    String? telegram,
    String? id,
  }) = _ProfileResponseModel;

  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseModelFromJson(json);
}
