// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/config/router/navigation_service.dart';
import 'package:sovchilar/core/di/service_locator.dart';
import 'package:sovchilar/features/data/model/credit_card/request/credit_card_request_model.dart';
import 'package:sovchilar/features/data/model/payment/reponse/payment_response_model.dart';
import 'package:sovchilar/features/domain/repositories/payment_repostiory.dart';
import 'package:sovchilar/utils/generic_bloc_state.dart';
import 'package:sovchilar/utils/string_helper.dart';

part 'payment_state.dart';
part 'payment_cubit.freezed.dart';

@injectable
class PaymentCubit extends Cubit<PaymentState> {
  //
  final PaymentRepository repository;

  final cardNumberController = TextEditingController();
  final expireDateController = TextEditingController();

  final confirmCodeController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final codeFormKey = GlobalKey<FormState>();

  PaymentCubit(this.repository) : super(const PaymentState());

  //
  bool get isFormValid => formKey.currentState!.validate();

  bool get isCodeFormValid => codeFormKey.currentState!.validate();

  //
  FutureOr<void> addPayment() async {
    if (!isFormValid) return;

    emit(state.copyWith(status: Status.loading));
    try {
      final model = CreditCardRequestModel(
        cardNumber: MyStringHelper.removeSpaces(cardNumberController.text),
        expireDate:
            MyStringHelper.formatAsExpiryDate(expireDateController.text),
      );

      final data = await repository.addPayment(model);
      emit(state.copyWith(payment: data, status: Status.success));
      getIt<NavigationService>().pop(true);
    } catch (e) {
      emit(state.copyWith(status: Status.initial));
    }
  }

  FutureOr<void> confirm() async {
    if (!isCodeFormValid) return;

    emit(state.copyWith(status: Status.loading));
    try {
      await repository.confirmPayment(
        state.payment?.sessionId ?? 0,
        int.parse(confirmCodeController.text),
      );
      emit(state.copyWith(status: Status.success));
      await getIt<NavigationService>().pop(true);
    } catch (e) {
      emit(state.copyWith(status: Status.initial));
    }
  }

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
