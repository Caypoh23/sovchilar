// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

// Project imports:
import 'package:sovchilar/app.dart';
import 'package:sovchilar/features/data/model/user/gender/gender_enum.dart';
import 'package:sovchilar/features/data/model/user/marital_status/marital_status_enum.dart';
import 'package:sovchilar/localization.dart';
import 'config/values/system_ui_overlay_style_constants.dart';
import 'core/di/service_locator.dart';
import 'features/data/datasource/local/storage_constants.dart';
import 'features/data/model/user/response/ad_response_model.dart';
import 'utils/shared_preference_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(MySystemUiOverlayStyle.splash);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await EasyLocalization.ensureInitialized();

  configureDependencies();

  await MySPHelper.init();
  await _setUpHive();

  runApp(const MyLocalization(child: MyApp()));
}

Future<void> _setUpHive() async {
  Hive.init((await getApplicationDocumentsDirectory()).path);

  Hive.registerAdapter(MaritalStatusAdapter());
  Hive.registerAdapter(GenderAdapter());
  Hive.registerAdapter(AdResponseModelAdapter());

  await Hive.openBox(StorageConstants.appBox);
  await Hive.openBox(StorageConstants.profileBox);
  await Hive.openBox(StorageConstants.adsBox);
}
