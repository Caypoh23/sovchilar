part of 'post_editor_cubit.dart';

@freezed
class PostEditorState with _$PostEditorState {
  const factory PostEditorState({
    @Default(Status.initial) Status status,
    @Default(Gender.male) Gender gender,
    Error? error,
  }) = _PostEditorState;
}
