import 'package:sovchilar/config/assets/image_constants.dart';

enum CardType {
  uzcard,
  humo,
  unknown,
}

extension CardTypeExtension on CardType {
  //
  String get image {
    switch (this) {
      case CardType.uzcard:
        return MyImages.uzcard;
      case CardType.humo:
        return MyImages.humo;
      default:
        return MyImages.creditCard;
    }
  }
}
