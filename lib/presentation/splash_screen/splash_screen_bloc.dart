// Project imports:
import 'package:sovchilar/config/router/app_router.gr.dart';
import 'package:sovchilar/config/router/navigation_service.dart';
import 'package:sovchilar/core/di/service_locator.dart';
import 'package:sovchilar/domain/repositories/auth_repository.dart';

class SplashScreenBloc {
  //
  final repository = getIt<AuthRepository>();

  void checkStatus() async {
    Future.delayed(
      const Duration(seconds: 2),
    );

    getIt<NavigationService>().push(const MainScreen());

    // // final UserStatus status = authRepository.getUserStatus();
    // // Future.delayed(const Duration(seconds: 3)).then((_) async {
    // //   switch (status) {
    // //     case UserStatus.signed:
    // //       final token = await authRepository
    // //           .refreshToken(authRepository.getRefreshToken());
    // //       DioClient.setToken(token.access);

    // //       NavigationService.newRootScreen(MainScreen.route);
    // //       break;

    // //   }
    // });
  }
}
