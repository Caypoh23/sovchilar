part of 'my_ads_bloc.dart';

@freezed
class MyAdsState with _$MyAdsState {
  const factory MyAdsState({
    @Default(Status.initial) Status status,
    @Default([]) List<AdResponseModel> myAdList,
    Error? error,
  }) = _MyAdsState;
}
