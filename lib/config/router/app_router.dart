// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'app_router.gr.dart';
import 'route_constants.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|View,Route')
class AppRouter extends $AppRouter {
  //
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          path: '/${RouteConstants.splash}',
          page: SplashScreen.page,
          initial: true,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          path: '/${RouteConstants.main}',
          page: MainScreen.page,
          children: [
            CustomRoute(
              path: '',
              page: ProfileScreen.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
            CustomRoute(
              path: RouteConstants.postEditor,
              page: PostEditorScreen.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
            CustomRoute(
              path: RouteConstants.language,
              page: LanguageScreen.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
          ],
        ),
      ];
}
