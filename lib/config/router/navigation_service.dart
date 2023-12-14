// Flutter imports:
import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// Package imports:
import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/app.dart';
import 'package:sovchilar/core/di/service_locator.dart';
import 'package:sovchilar/custom_widgets/buttons/default_ink_well.dart';
import 'app_router.dart';

@singleton
class NavigationService {
  //
  final router = getIt<AppRouter>();

  //

  void clearFocus(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  void updateLocale(String lang) {
    MyApp.of(router.navigatorKey.currentState!.context)!.updateLocale(lang);
  }

  //

  Future<dynamic> pushNamed<T>(String route) {
    return router.pushNamed<T>(route);
  }

  Future<dynamic> push<T>(PageRouteInfo route) {
    return router.push<T>(route);
  }

  Future<dynamic> pushAndRemoveUntil<T>(
    PageRouteInfo route, {
    String untilRouteName = '/',
  }) async {
    return await router.pushAndPopUntil<T>(
      route,
      predicate: (route) => route.settings.name == untilRouteName,
    );
  }

  Future<dynamic> replaceNamed<T>(String routeName) {
    return router.replaceNamed<T>(routeName);
  }

  Future<dynamic> replace<T>(PageRouteInfo route) {
    return router.replace<T>(route);
  }

  ///
  /// Navigate
  ///

  Future<dynamic> navigate(PageRouteInfo route) {
    return router.navigate(route);
  }

  Future<dynamic> navigateNamed(String routeName) {
    return router.navigateNamed(routeName);
  }

  Future<dynamic> pushAll(List<PageRouteInfo> routes) {
    return router.pushAll(routes);
  }

  Future<dynamic> replaceAll(List<PageRouteInfo> routes) {
    return router.replaceAll(routes);
  }

  ///
  ///  Pop
  ///

  Future<dynamic> pop<T>([result]) {
    return router.pop<T>(result);
  }

  void popUntil(String routeName) {
    router.popUntil((route) => route.settings.name == routeName);
  }

  bool canPop([result]) {
    return router.canPop();
  }

  //
  Future<dynamic>? showDialog({
    required Widget dialog,
    double? padding,
    Color barrierColor = Colors.black45,
  }) async {
    return await material.showDialog(
      useSafeArea: false,
      barrierDismissible: true,
      barrierColor: Colors.black54,
      context: router.navigatorKey.currentState!.context,
      builder: (context) {
        return Dialog(
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          child: dialog,
        );
      },
    );
  }

  Future<dynamic> showAlertDialog({
    Widget? content,
    Widget? title,
    required VoidCallback onOkPressed,
  }) async {
    return await material.showDialog(
      context: router.navigatorKey.currentState!.context,
      builder: (context) {
        return AlertDialog(
          title: title,
          content: content,
          backgroundColor: Colors.white,
          actions: [
            MyInkWell(
              onTap: onOkPressed,
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              borderRadius: BorderRadius.circular(8),
              child: Text(
                'OK',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> showToast({required String text, required String title}) async {
    await Flushbar(
      borderRadius: BorderRadius.circular(15),
      title: title,
      messageText: Text(text),
      flushbarPosition: FlushbarPosition.TOP,
      barBlur: 7.0,
      backgroundColor: Colors.grey.withOpacity(0.2),
      duration: const Duration(seconds: 3),
    ).show(router.navigatorKey.currentState!.context);
  }

  Future<void> showErrorToast(String text) async {
    await Flushbar(
      borderRadius: BorderRadius.circular(15),
      barBlur: 7.0,
      title: 'Error',
      messageText: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.red,
      duration: const Duration(seconds: 3),
      flushbarPosition: FlushbarPosition.TOP,
    ).show(router.navigatorKey.currentState!.context);
  }
}

void addPostFrameCallback(Function callback) {
  SchedulerBinding.instance.addPostFrameCallback((_) => callback());
}
