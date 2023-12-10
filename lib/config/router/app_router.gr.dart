// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

// Package imports:
import 'package:auto_route/auto_route.dart' as _i3;

// Project imports:
import 'package:sovchilar/features/presentation/main/main_screen.dart' as _i1;

import 'package:sovchilar/features/presentation/splash_screen/splash_screen.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    MainScreen.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.MainScreen(),
      );
    },
    SplashScreen.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.MainScreen]
class MainScreen extends _i3.PageRouteInfo<void> {
  const MainScreen({List<_i3.PageRouteInfo>? children})
      : super(
          MainScreen.name,
          initialChildren: children,
        );

  static const String name = 'MainScreen';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SplashScreen]
class SplashScreen extends _i3.PageRouteInfo<void> {
  const SplashScreen({List<_i3.PageRouteInfo>? children})
      : super(
          SplashScreen.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreen';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
