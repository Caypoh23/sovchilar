// Project imports:
import 'package:sovchilar/config/values/strings_constants.dart';

enum ChildrenEnum {
  none,
  have,
}

extension ChildrenEnumExtension on ChildrenEnum {
  //
  String get name {
    switch (this) {
      case ChildrenEnum.none:
        return MyStrings.noChildren;
      case ChildrenEnum.have:
        return MyStrings.haveChildren;
    }
  }

  bool get hasChildren {
    switch (this) {
      case ChildrenEnum.have:
        return true;
      default:
        return false;
    }
  }
}
