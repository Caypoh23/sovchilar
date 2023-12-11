// Package imports:
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:sovchilar/config/values/strings_constants.dart';

part 'marital_status_enum.g.dart';

@HiveType(typeId: 0)
enum MaritalStatus {
  @HiveField(0)
  @JsonValue('divorced')
  divorced,
  @HiveField(1)
  @JsonValue('noMarriage')
  single
}

extension MaritalStatusExtension on MaritalStatus {
  //
  String get name {
    switch (this) {
      case MaritalStatus.divorced:
        return MyStrings.divorced;

      default:
        return MyStrings.notMarried;
    }
  }
}
