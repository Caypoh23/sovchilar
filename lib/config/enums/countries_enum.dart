enum CountriesEnum {
  uzbekistan,
}

extension CountriesEnumExtension on CountriesEnum {
  //
  String get name {
    switch (this) {
      case CountriesEnum.uzbekistan:
        return 'Узбекистан';
    }
  }

  String get code {
    switch (this) {
      case CountriesEnum.uzbekistan:
        return 'uz';
    }
  }
}
