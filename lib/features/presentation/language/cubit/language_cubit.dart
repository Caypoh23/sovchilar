// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/utils/generic_bloc_state.dart';
import 'package:sovchilar/utils/shared_preference_helper.dart';

part 'language_state.dart';
part 'language_cubit.freezed.dart';

enum ProfileLanguage {
  uz,
  ru,
}

extension ProfileLanguageExtension on ProfileLanguage {
  //
  String get title {
    switch (this) {
      case ProfileLanguage.ru:
        return MyStrings.ruLang;
      default:
        return MyStrings.uzLang;
    }
  }

  String get code {
    switch (this) {
      case ProfileLanguage.ru:
        return 'ru';
      default:
        return 'uz';
    }
  }
}

@injectable
class LanguageCubit extends Cubit<LanguageState> {
  //
  LanguageCubit() : super(const LanguageState()) {
    final lang = MySPHelper.lang;
    emit(state.copyWith(
        lang: ProfileLanguage.values.firstWhere((e) => e.name == lang)));
  }

  //
  void setLang(ProfileLanguage lang) {
    emit(state.copyWith(lang: lang));
  }

  void onSavePressed() {
    MySPHelper.lang = state.lang!.name;
  }
}
