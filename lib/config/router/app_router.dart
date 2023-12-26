// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'app_router.gr.dart';
import 'route_constants.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|View|Screen,Route')
@lazySingleton
class AppRouter extends $AppRouter {
  //
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          path: '/${RouteConstants.splash}',
          page: SplashRoute.page,
          initial: true,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          path: '/${RouteConstants.main}',
          page: MainRoute.page,
          children: [
            CustomRoute(
              path: '',
              page: AuthRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
            CustomRoute(
              path: RouteConstants.profile,
              page: ProfileRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
            CustomRoute(
              path: RouteConstants.postEditor,
              page: PostEditorRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
            CustomRoute(
              path: RouteConstants.myAds,
              page: MyAdsRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
            CustomRoute(
              path: RouteConstants.language,
              page: LanguageRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
          ],
        ),
      ];
}
