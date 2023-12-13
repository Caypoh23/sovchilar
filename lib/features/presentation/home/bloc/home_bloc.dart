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
import 'home_event.dart';

part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  //
  final AdRepository adRepository;

  HomeBloc(this.adRepository) : super(const HomeState()) {
    on<OnFetchAds>(_onFetchAds);
  }

  FutureOr<void> _onFetchAds(OnFetchAds event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: Status.loading));
    try {
      final data = await adRepository.fetchList();
      emit(state.copyWith(
        userList: data.userList ?? [],
        status: Status.success,
      ));
    } catch (e) {
      emit(state.copyWith(status: Status.initial));
    }
  }
}
