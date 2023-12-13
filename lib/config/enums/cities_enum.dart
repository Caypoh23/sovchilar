enum CitiesEnum {
  tashkent,
  tashkentRegion,
  karakalpakstan,
  andijan,
  bukhara,
  jizzakh,
  fergana,
  kashkadarya,
  khorezm,
  namangan,
  navoiy,
  samarkand,
  surkhandarya,
  sirdaryo,
}

extension CitiesEnumExtension on CitiesEnum {
  //
  String get name {
    switch (this) {
      case CitiesEnum.tashkent:
        return 'Ташкент';
      case CitiesEnum.tashkentRegion:
        return 'Ташкентская область';
      case CitiesEnum.karakalpakstan:
        return 'Республика Каракалпакстан';
      case CitiesEnum.andijan:
        return 'Андижанская область';
      case CitiesEnum.bukhara:
        return 'Бухарская область';
      case CitiesEnum.jizzakh:
        return 'Джизакская область';
      case CitiesEnum.fergana:
        return 'Ферганская область';
      case CitiesEnum.kashkadarya:
        return 'Кашкадарьинская область';
      case CitiesEnum.khorezm:
        return 'Хорезмская область';
      case CitiesEnum.namangan:
        return 'Наманганская область';
      case CitiesEnum.navoiy:
        return 'Навоийская область';
      case CitiesEnum.samarkand:
        return 'Самаркандская область';
      case CitiesEnum.surkhandarya:
        return 'Сурхандарьинская область';
      case CitiesEnum.sirdaryo:
        return 'Сырдарьинская область';
    }
  }
}
