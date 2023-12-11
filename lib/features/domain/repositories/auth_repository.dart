// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/core/di/service_locator.dart';
import 'package:sovchilar/features/data/datasource/local/auth_local_db.dart';
import 'package:sovchilar/features/data/datasource/remote/auth_api.dart';
import 'package:sovchilar/features/data/model/login/google_request/login_google_request.dart';
import 'package:sovchilar/features/data/model/login/response/login_response_model.dart';
import 'package:sovchilar/features/data/model/registration/registration_request_dto.dart';
import 'package:sovchilar/features/data/model/send_email/response/send_email_response.dart';

abstract class AuthRepository {
  Future<LoginResponseModel> login(
      {required String mail, required String password});

  Future<SendEmailResponse> sendEmail(String mail);

  Future<LoginResponseModel> register(
      {required RegistrationRequestDto registrationRequestDto});

  Future<LoginResponseModel> loginWithApple(String token);

  Future<LoginResponseModel> loginWithGoogle(LoginGoogleRequest request);

  Future<LoginResponseModel> refreshToken(String refresh);

  String getToken();

  void setToken(String token);

  String getRefreshToken();

  void setRefreshToken(String token);

  Future<void> getVerificationCode(String mail);

  Future<String> confirmMailVerification(
      {required String mail, required String code});

  Future<void> resetPassword(String newPassword);

  Future<void> deleteUser();

  Future<void> verifyDeleteUser(String code);
}

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  //
  final api = getIt<AuthApi>();
  final localStorage = getIt<AuthLocalStorage>();

  @override
  Future<LoginResponseModel> login(
      {required String mail, required String password}) async {
    try {
      return await api.login(mail: mail, password: password);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SendEmailResponse> sendEmail(String mail) async {
    try {
      return await api.sendEmail(mail);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<LoginResponseModel> register(
      {required RegistrationRequestDto registrationRequestDto}) async {
    try {
      return await api.register(registrationRequestDto: registrationRequestDto);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<LoginResponseModel> loginWithApple(String token) async {
    try {
      return await api.loginWithApple(token);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<LoginResponseModel> loginWithGoogle(LoginGoogleRequest request) async {
    try {
      return await api.loginWithGoogle(request);
    } catch (e) {
      rethrow;
    }
  }

  @override
  String getRefreshToken() {
    return localStorage.getRefreshToken();
  }

  @override
  String getToken() {
    return localStorage.getToken();
  }

  @override
  void setRefreshToken(String token) {
    localStorage.setRefreshToken(token);
  }

  @override
  void setToken(String token) {
    localStorage.setToken(token);
  }

  @override
  Future<String> confirmMailVerification(
      {required String mail, required String code}) async {
    try {
      return await api.confirmMailVerification(mail: mail, code: code);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> getVerificationCode(String mail) async {
    try {
      await api.getVerificationCode(mail);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> resetPassword(String newPassword) async {
    try {
      await api.resetPassword(newPassword);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteUser() async {
    try {
      await api.deleteUser();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> verifyDeleteUser(String code) async {
    try {
      await api.verifyDeleteUser(code);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<LoginResponseModel> refreshToken(String refresh) async {
    try {
      return await api.refreshToken(refresh);
    } catch (e) {
      rethrow;
    }
  }
}
