// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/features/data/model/user/user_response/user_response_model.dart';
import 'package:sovchilar/features/domain/user_repository.dart';
import 'package:sovchilar/utils/generic_bloc_state.dart';
import 'home_event.dart';

part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  //
  final UserRepository userRepository;

  HomeBloc(this.userRepository) : super(const HomeState()) {
    on<OnFetchUsers>(_onFetchUsers);
  }

  FutureOr<void> _onFetchUsers(
      OnFetchUsers event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: Status.loading));
    try {
      final data = await userRepository.fetchList();
      emit(state.copyWith(
          userList: data.userList ?? [], status: Status.success));
    } catch (e) {
      emit(state.copyWith(status: Status.initial));
    }
  }
}
