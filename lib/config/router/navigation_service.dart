// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'app_router.dart';

@singleton
class NavigationService {
  //
  final router = AppRouter();

  //

  void clearFocus(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  //

  Future<dynamic> pushNamed<T>(String route) {
    return router.pushNamed<T>(route);
  }

  Future<dynamic> push<T>(PageRouteInfo route) {
    return router.push<T>(route);
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

  // Future showMyModalBottomSheet({
  //   required BuildContext context,
  //   required Widget sheet,
  //   bool isScrollable = false,
  // }) {
  //   return showModalBottomSheet(
  //     context: context,
  //     builder: (_) => sheet,
  //     isScrollControlled: true,
  //     clipBehavior: Clip.antiAlias, // default is Clip.none
  //     shape: isScrollable ? MyBorderRadius.popUpRounded : null,
  //     backgroundColor: isScrollable ? MyColors.white : MyColors.transparent,
  //   );
  // }

  // Future showMyCupertinoModalPopup({
  //   required List<Widget> actions,
  //   required BuildContext context,
  //   String? title,
  //   bool isSkip = false,
  // }) {
  //   return showCupertinoModalPopup(
  //     context: context,
  //     builder: (_) => MyCupertinoActionSheet(
  //       title: title,
  //       actions: actions,
  //       isSkip: isSkip,
  //     ),
  //   );
  // }

  // static void showErrorToast(String text) {
  //   Flushbar(
  //     borderRadius: BorderRadius.circular(15),
  //     title: 'Error',
  //     messageText: Text(text),
  //     flushbarPosition: FlushbarPosition.TOP,
  //     barBlur: 7.0,
  //     backgroundColor: MyColors.primary,
  //     duration: const Duration(seconds: 3),
  //   ).show(router.con);
  // }
}

void addPostFrameCallback(Function callback) {
  SchedulerBinding.instance.addPostFrameCallback((_) => callback());
}
