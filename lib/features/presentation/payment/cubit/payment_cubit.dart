// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/features/domain/repositories/payment_repostiory.dart';
import 'package:sovchilar/utils/generic_bloc_state.dart';

part 'payment_state.dart';
part 'payment_cubit.freezed.dart';

@injectable
class PaymentCubit extends Cubit<PaymentState> {
  //
  final PaymentRepository repository;

  PaymentCubit(this.repository) : super(const PaymentState());
  //

  FutureOr<void> onFetchPrice() async {
    try {
      emit(state.copyWith(status: Status.loading));
      final price = await repository.fetchPrice();
      repository.setPrice(price);
      emit(state.copyWith(status: Status.success));
    } catch (e) {
      emit(state.copyWith(status: Status.initial));
    }
  }
}
