// Flutter imports:
import 'dart:async';

import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sovchilar/features/data/model/ad/request/ad_request_model.dart';

// Project imports:
import 'package:sovchilar/features/data/model/user/gender/gender_enum.dart';
import 'package:sovchilar/features/domain/repositories/ad_repository.dart';
import 'package:sovchilar/features/domain/repositories/payment_repostiory.dart';
import 'package:sovchilar/features/presentation/home/bloc/home_bloc.dart';
import 'package:sovchilar/features/presentation/home/bloc/home_event.dart';
import 'package:sovchilar/utils/generic_bloc_state.dart';

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
  final familyStatusController = TextEditingController();
  final childrenController = TextEditingController();
  final fromController = TextEditingController();
  final toController = TextEditingController();
  final telegramController = TextEditingController();
  final countryController = TextEditingController();
  final cityController = TextEditingController();
  final additionalInfoController = TextEditingController();

  PostEditorCubit(
    this.adRepository,
    this.paymentRepository,
    this.homeBloc,
  ) : super(const PostEditorState());

  //

  String get price => paymentRepository.getPrice();
  void onGenderChanged(Gender gender) => emit(state.copyWith(gender: gender));

  FutureOr<void> onSubmitAd() async {
    try {
      final model = AdRequestModel(
        name: nameController.text,
        age: int.parse(ageController.text),
        nationality: nationalityController.text,
        marriageStatus: familyStatusController.text,
        // children: childrenController.text,
        fromAge: int.parse(fromController.text),
        tillAge: int.parse(toController.text),
        telegram: telegramController.text,
        city: cityController.text,
        country: countryController.text,
        moreInfo: additionalInfoController.text,
        moderated: false,
        gender: state.gender.name,
      );

      emit(state.copyWith(status: Status.loading));
      await adRepository.postAd(model);
      emit(state.copyWith(status: Status.success));
      homeBloc.add(OnFetchAds());
    } catch (e) {
      emit(state.copyWith(status: Status.initial));
    }
  }
}
