// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:sovchilar/utils/generic_bloc_state.dart';
import 'home_event.dart';

part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  //
  HomeBloc() : super(const HomeState()) {
    on<HomeEvent>((event, emit) {});
  }
}
