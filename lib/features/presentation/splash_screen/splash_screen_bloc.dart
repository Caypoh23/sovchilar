// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/config/router/app_router.gr.dart';
import 'package:sovchilar/config/router/navigation_service.dart';
import 'package:sovchilar/core/di/service_locator.dart';
import 'package:sovchilar/core/network/dio_client.dart';
import 'package:sovchilar/features/domain/repositories/auth_repository.dart';

@injectable
class SplashScreenBloc {
  //
  final AuthRepository repository;

  SplashScreenBloc(this.repository);

  void checkStatus() async {
    getIt<NavigationService>().push(const MainRoute());

    final token = repository.getToken();
    if (token.isEmpty) {
      getIt<NavigationService>().push(const AuthRoute());
      return;
    }

    DioClient.setToken(token);
    getIt<NavigationService>().push(const ProfileRoute());
  }
}
