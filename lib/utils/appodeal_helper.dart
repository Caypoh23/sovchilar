import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';

class AppodealHelper {
  //
  static void init() {
    Appodeal.setLogLevel(Appodeal.LogLevelDebug);

    Appodeal.initialize(
      appKey: Platform.isIOS
          ? dotenv.get('IOS_APPODEAL_KEY')
          : dotenv.get('ANDROID_APPODEAL_KEY'),
      adTypes: [
        AppodealAdType.Banner,
        AppodealAdType.RewardedVideo,
      ],
    );
  }

  static Future<void> showRewardedVideo({
    required VoidCallback onRewardedVideoShown,
  }) async {
    var isCanShow = await Appodeal.canShow(AppodealAdType.RewardedVideo);
    final isLoaded = await Appodeal.isLoaded(AppodealAdType.RewardedVideo);

    Appodeal.setRewardedVideoCallbacks(
      onRewardedVideoClosed: (isFinished) async {
        if (isFinished) {
          onRewardedVideoShown();
        } else {
          debugPrint('Rewarded video closed without reward');
        }
      },
    );

    if (isCanShow && isLoaded) {
      await Appodeal.show(AppodealAdType.RewardedVideo);
    }
  }
}
