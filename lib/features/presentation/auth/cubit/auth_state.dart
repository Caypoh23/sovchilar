part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(Status.initial) Status status,
    @Default('') String? token,
    UsernameType? usernameType,
    Error? error,
  }) = _AuthState;
}
