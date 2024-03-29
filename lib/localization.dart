// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';

// Project imports:
import 'config/assets/assets_contstants.dart';
import 'utils/shared_preference_helper.dart';

class MyLocalization extends StatefulWidget {
  //
  final Widget child;

  const MyLocalization({super.key, required this.child});

  @override
  State<MyLocalization> createState() => _MyLocalizationState();
}

class _MyLocalizationState extends State<MyLocalization> {
  //
  final list = [
    const Locale('ru'),
    const Locale('uz'),
  ];

  void updateLocale() {
    context.setLocale(Locale(MySPHelper.lang));
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
  Widget build(BuildContext context) {
    return EasyLocalization(
      saveLocale: false,
      useOnlyLangCode: true,
      supportedLocales: list,
      path: MyAssets.translations,
      assetLoader: CsvAssetLoader(),
      startLocale: Locale(MySPHelper.lang),
      fallbackLocale: Locale(MySPHelper.lang),
      child: widget.child,
    );
  }
}
