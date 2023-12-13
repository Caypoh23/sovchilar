part of 'language_cubit.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState({
    @Default(Status.initial) Status status,
    @Default(ProfileLanguage.uz) ProfileLanguage? lang,
    Error? error,
  }) = _LanguageState;
}
