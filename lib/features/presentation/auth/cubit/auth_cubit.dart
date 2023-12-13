// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/config/router/app_router.gr.dart';
import 'package:sovchilar/config/router/navigation_service.dart';
import 'package:sovchilar/core/di/service_locator.dart';
import 'package:sovchilar/core/network/dio_client.dart';
import 'package:sovchilar/features/data/model/login/response/login_response_model.dart';
import 'package:sovchilar/features/domain/repositories/auth_repository.dart';
import 'package:sovchilar/utils/generic_bloc_state.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  //
  final AuthRepository repository;

  final telegramController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  AuthCubit(this.repository) : super(const AuthState());

  //
  bool get isFormValid => formKey.currentState!.validate();

  //
  FutureOr<void> login() async {
    emit(state.copyWith(status: Status.loading));
    try {
      final data = await repository.login(
        telegram: telegramController.text,
        password: passwordController.text,
      );
      emit(state.copyWith(token: data.token, status: Status.success));
      _saveData(data);
      getIt<NavigationService>().push(const ProfileRoute());
    } catch (e) {
      emit(state.copyWith(status: Status.initial));
    }
  }

  void _saveData(LoginResponseModel data) {
    DioClient.setToken(data.token);
    repository.setToken(data.token ?? '');
    repository.setUserId(data.userId ?? 0);
  }
}
