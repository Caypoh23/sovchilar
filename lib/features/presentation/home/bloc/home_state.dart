part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(Status.initial) Status status,
    @Default([]) List<AdResponseModel> userList,
    Error? error,
  }) = _HomeState;
}
