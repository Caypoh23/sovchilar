// Package imports:
import 'package:hive/hive.dart';

// Project imports:
import 'package:sovchilar/config/values/strings_constants.dart';

part 'gender_enum.g.dart';

@HiveType(typeId: 1)
enum Gender {
  @HiveField(0)
  male,
  @HiveField(1)
  female,
}

extension GenderExtension on Gender {
  //
  String get name {
    switch (this) {
      case Gender.female:
        return MyStrings.woman;

      default:
        return MyStrings.man;
    }
  }

  String get code {
    switch (this) {
      case Gender.female:
        return 'female';

      default:
        return 'male';
    }
  }
}
