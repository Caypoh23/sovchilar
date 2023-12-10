// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

// Project imports:
import 'package:sovchilar/app.dart';
import 'package:sovchilar/localization.dart';
import 'config/values/system_ui_overlay_style_constants.dart';
import 'core/di/service_locator.dart';
import 'data/datasource/local/storage_constants.dart';
import 'data/model/user/user_status.dart';
import 'utils/shared_preference_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(MySystemUiOverlayStyle.splash);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await EasyLocalization.ensureInitialized();

  await MySPHelper.init();

  configureDependencies();

  await _setUpHive();

  runApp(const MyLocalization(child: MyApp()));
}

Future<void> _setUpHive() async {
  Hive.init((await getApplicationDocumentsDirectory()).path);
  Hive.registerAdapter(UserStatusAdapter());

  await Hive.openBox(StorageConstants.appBox);
  await Hive.openBox(StorageConstants.userStatusBox);
}
