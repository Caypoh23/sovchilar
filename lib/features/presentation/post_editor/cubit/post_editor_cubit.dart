// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/config/enums/cities_enum.dart';
import 'package:sovchilar/config/enums/countries_enum.dart';
import 'package:sovchilar/config/router/navigation_service.dart';
import 'package:sovchilar/core/di/service_locator.dart';
import 'package:sovchilar/features/data/model/ad/request/ad_request_model.dart';
import 'package:sovchilar/features/data/model/user/gender/gender_enum.dart';
import 'package:sovchilar/features/data/model/user/marital_status/marital_status_enum.dart';
import 'package:sovchilar/features/domain/repositories/ad_repository.dart';
import 'package:sovchilar/features/domain/repositories/payment_repostiory.dart';
import 'package:sovchilar/features/presentation/home/bloc/home_bloc.dart';
import 'package:sovchilar/features/presentation/home/bloc/home_event.dart';
import 'package:sovchilar/features/presentation/payment/payment_confirm_dialog.dart';
import 'package:sovchilar/features/presentation/payment/payment_dialog.dart';
import 'package:sovchilar/utils/generic_bloc_state.dart';
import 'package:sovchilar/utils/string_helper.dart';

part 'post_editor_state.dart';
part 'post_editor_cubit.freezed.dart';

@injectable
class PostEditorCubit extends Cubit<PostEditorState> {
  //
  final AdRepository adRepository;
  final PaymentRepository paymentRepository;
  final HomeBloc homeBloc;

  //
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final nationalityController = TextEditingController();
  final fromController = TextEditingController();
  final toController = TextEditingController();
  final telegramController = TextEditingController();
  final additionalInfoController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  PostEditorCubit(
    this.adRepository,
    this.paymentRepository,
    this.homeBloc,
  ) : super(const PostEditorState());

  //
  String get price => MyStringHelper.formatNumber(paymentRepository.getPrice());

  //
  void onGenderChanged(Gender gender) => emit(state.copyWith(gender: gender));

  void onMaritalStatusChanged(MaritalStatus? maritalStatus) =>
      emit(state.copyWith(maritalStatus: maritalStatus));

  void onChildrenChanged(bool? hasChildren) =>
      emit(state.copyWith(hasChildren: hasChildren));

  void onCountryChanged(CountriesEnum? country) =>
      emit(state.copyWith(country: country));

  void onCityChanged(CitiesEnum? city) => emit(state.copyWith(city: city));

  //
  bool get isFormValid => formKey.currentState!.validate();

  //

  FutureOr<void> onPayPressed() async {
    if (!isFormValid) return;

    emit(state.copyWith(status: Status.loading));
    try {
      final navigation = getIt<NavigationService>();
      final paymentResult = await navigation.showDialog(
        dialog: const PaymentDialog(),
      );
      if (paymentResult == true) {
        final confirmResult = await navigation.showDialog(
          dialog: const PaymentConfirmDialog(),
        );

        if (confirmResult == true) {
          await _onSubmitAd();
        }
      }
    } catch (e) {
      emit(state.copyWith(status: Status.initial));
    }
  }

  FutureOr<void> _onSubmitAd() async {
    emit(state.copyWith(status: Status.loading));
    try {
      final model = AdRequestModel(
        name: nameController.text,
        age: int.parse(ageController.text),
        nationality: nationalityController.text,
        marriageStatus: state.maritalStatus!.code,
        children: state.hasChildren,
        fromAge: int.parse(fromController.text),
        tillAge: int.parse(toController.text),
        telegram: telegramController.text,
        city: state.city!.name,
        country: state.country!.name,
        moreInfo: additionalInfoController.text,
        moderated: false,
        gender: state.gender.code,
      );

      await adRepository.postAd(model);
      emit(state.copyWith(status: Status.success));
      homeBloc.add(OnFetchAds());
    } catch (e) {
      emit(state.copyWith(status: Status.initial));
    }
  }
}
