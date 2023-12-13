// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:sovchilar/features/presentation/language/language_screen.dart'
    as _i1;
import 'package:sovchilar/features/presentation/main/main_screen.dart' as _i2;
import 'package:sovchilar/features/presentation/post_editor/post_editor_screen.dart'
    as _i3;
import 'package:sovchilar/features/presentation/profile/profile_screen.dart'
    as _i4;
import 'package:sovchilar/features/presentation/splash_screen/splash_screen.dart'
    as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    LanguageScreen.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LanguageScreen(),
      );
    },
    MainScreen.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MainScreen(),
      );
    },
    PostEditorScreen.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PostEditorScreen(),
      );
    },
    ProfileScreen.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ProfileScreen(),
      );
    },
    SplashScreen.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.LanguageScreen]
class LanguageScreen extends _i6.PageRouteInfo<void> {
  const LanguageScreen({List<_i6.PageRouteInfo>? children})
      : super(
          LanguageScreen.name,
          initialChildren: children,
        );

  static const String name = 'LanguageScreen';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MainScreen]
class MainScreen extends _i6.PageRouteInfo<void> {
  const MainScreen({List<_i6.PageRouteInfo>? children})
      : super(
          MainScreen.name,
          initialChildren: children,
        );

  static const String name = 'MainScreen';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PostEditorScreen]
class PostEditorScreen extends _i6.PageRouteInfo<void> {
  const PostEditorScreen({List<_i6.PageRouteInfo>? children})
      : super(
          PostEditorScreen.name,
          initialChildren: children,
        );

  static const String name = 'PostEditorScreen';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ProfileScreen]
class ProfileScreen extends _i6.PageRouteInfo<void> {
  const ProfileScreen({List<_i6.PageRouteInfo>? children})
      : super(
          ProfileScreen.name,
          initialChildren: children,
        );

  static const String name = 'ProfileScreen';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SplashScreen]
class SplashScreen extends _i6.PageRouteInfo<void> {
  const SplashScreen({List<_i6.PageRouteInfo>? children})
      : super(
          SplashScreen.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreen';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
