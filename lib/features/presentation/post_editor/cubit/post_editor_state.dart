part of 'post_editor_cubit.dart';

@freezed
class PostEditorState with _$PostEditorState {
  const factory PostEditorState({
    @Default(Status.initial) Status status,
    @Default(Gender.female) Gender gender,
    UsernameType? usernameType,
    MaritalStatus? maritalStatus,
    bool? hasChildren,
    CountriesEnum? country,
    CitiesEnum? city,
    Error? error,
  }) = _PostEditorState;
}
