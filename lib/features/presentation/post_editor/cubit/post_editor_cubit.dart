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
import 'package:sovchilar/config/router/app_router.gr.dart';
import 'package:sovchilar/config/router/navigation_service.dart';
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/core/di/service_locator.dart';
import 'package:sovchilar/features/data/model/ad/request/ad_request_model.dart';
import 'package:sovchilar/features/data/model/user/gender/gender_enum.dart';
import 'package:sovchilar/features/data/model/user/marital_status/marital_status_enum.dart';
import 'package:sovchilar/features/domain/repositories/ad_repository.dart';
import 'package:sovchilar/features/domain/repositories/payment_repostiory.dart';
import 'package:sovchilar/features/presentation/auth/cubit/auth_cubit.dart';
import 'package:sovchilar/features/presentation/home/bloc/home_bloc.dart';
import 'package:sovchilar/features/presentation/home/bloc/home_event.dart';
import 'package:sovchilar/features/presentation/payment/payment_confirm_dialog.dart';
import 'package:sovchilar/features/presentation/payment/payment_dialog.dart';
import 'package:sovchilar/utils/appodeal_helper.dart';
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
  final usernameController = TextEditingController();
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

  void onUsernameTypeChanged(UsernameType type) =>
      emit(state.copyWith(usernameType: type));

  //
  bool get isFormValid => formKey.currentState!.validate();

  //

  FutureOr<void> onPublishPressed() async {
    if (!isFormValid) return;

    if (state.gender == Gender.female) {
      await AppodealHelper.showRewardedVideo(
        onRewardedVideoShown: () async {
          await _onSubmitAd();
        },
      );
      return;
    }

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
      emit(state.copyWith(status: Status.initial));
    } catch (e) {
      emit(state.copyWith(status: Status.initial));
    }
  }

  FutureOr<void> _onSubmitAd() async {
    emit(state.copyWith(status: Status.loading));
    try {
      final username = state.usernameType == UsernameType.telegram
          ? usernameController.text
          : MyStringHelper.removeNonNumbers(
              usernameController.text,
            );

      final model = AdRequestModel(
        name: nameController.text,
        age: int.parse(ageController.text),
        nationality: nationalityController.text,
        marriageStatus: state.maritalStatus!.code,
        children: state.hasChildren,
        fromAge: int.parse(fromController.text),
        tillAge: int.parse(toController.text),
        telegram: username,
        city: state.city!.name,
        country: state.country!.name,
        moreInfo: additionalInfoController.text,
        moderated: false,
        gender: state.gender.code,
      );

      await adRepository.postAd(model);
      await getIt<NavigationService>().showAlertDialog(
        content: Text(
          MyStrings.requestIsSentToModeration,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        onOkPressed: () async {
          await getIt<NavigationService>().pop();
          getIt<NavigationService>().pushAndRemoveUntil(const ProfileRoute());
        },
      );
      emit(state.copyWith(status: Status.success));
      homeBloc.add(OnFetchAds());
    } catch (e) {
      emit(state.copyWith(status: Status.initial));
    }
  }
}
