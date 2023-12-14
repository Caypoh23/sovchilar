part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(Status.initial) Status status,
    @Default('') String? token,
    AuthType? authType,
    Error? error,
  }) = _AuthState;
}
