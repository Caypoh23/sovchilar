// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/utils/generic_bloc_state.dart';
import 'main_event.dart';

@injectable
class MainBloc extends Bloc<MainEvent, GenericBlocState<int>> {
  //
  MainBloc() : super(GenericBlocState.success(0)) {
    on<OnItemPressed>(_onItemPressed);
  }

  FutureOr<void> _onItemPressed(
      OnItemPressed event, Emitter<GenericBlocState<int>> emit) {
    emit(GenericBlocState.success(event.newIndex));
  }

  Future<bool> onWillPop() async {
    if (state.data == 0) {
      return true;
    } else {
      add(OnItemPressed(newIndex: 0));
      return false;
    }
  }
}
