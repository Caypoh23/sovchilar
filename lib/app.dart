// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:sovchilar/core/di/service_locator.dart';
import 'config/router/navigation_service.dart';
import 'config/theme/app_theme.dart';
import 'config/values/strings_constants.dart';
import 'custom_widgets/scroll_behavior.dart';
import 'features/presentation/main_screen/bloc/main_screen_bloc.dart';
import 'utils/media_helper.dart';

class MyApp extends StatefulWidget {
  //
  static MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<MyAppState>();

  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> with WidgetsBindingObserver {
  //
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  void updateLocale(String lang) {
    context.setLocale(Locale(lang));
    rebuildAllChildren();
  }

  void rebuildAllChildren() {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<NavigationService>().router;

    return MultiBlocProvider(
      providers: [
        BlocProvider<MainScreenBloc>(
          create: (context) => MainScreenBloc(),
        ),
      ],
      child: MaterialApp.router(
        builder: builder,
        locale: context.locale,
        title: MyStrings.appName,
        theme: AppTheme.lightTheme,
        themeMode: ThemeMode.light,
        routerConfig: appRouter.config(),
        debugShowCheckedModeBanner: false,
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
      ),
    );
  }

  Widget builder(context, child) {
    MediaHelper.init(context);

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: ScrollConfiguration(
        behavior: MyScrollBehavior(),
        child: child,
      ),
    );
  }
}
