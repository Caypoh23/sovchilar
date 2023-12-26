// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/features/data/model/user/response/ad_response_model.dart';
import 'package:sovchilar/features/domain/repositories/ad_repository.dart';
import 'package:sovchilar/utils/generic_bloc_state.dart';
import 'my_ads_event.dart';

part 'my_ads_state.dart';
part 'my_ads_bloc.freezed.dart';

@injectable
class MyAdsBloc extends Bloc<MyAdsEvent, MyAdsState> {
  //
  final AdRepository adRepository;

  MyAdsBloc(this.adRepository) : super(const MyAdsState()) {
    on<OnFetchMyAds>(_onFetchAds);
  }

  FutureOr<void> _onFetchAds(
      OnFetchMyAds event, Emitter<MyAdsState> emit) async {
    emit(state.copyWith(status: Status.loading));
    try {
      final data = await adRepository.fetchMyAds();
      emit(state.copyWith(
        myAdList: data.userList ?? [],
        status: Status.success,
      ));
    } catch (e) {
      emit(state.copyWith(status: Status.initial));
    }
  }
}
