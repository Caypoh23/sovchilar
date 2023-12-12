// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:sovchilar/config/router/app_router.gr.dart';
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/custom_widgets/buttons/gradient_button.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  //
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 16,
            right: 20,
            child: GestureDetector(
              onTap: () {
                context.router.push(
                  const LanguageScreen(),
                );
              },
              child: Icon(
                Icons.language,
                color: Theme.of(context).colorScheme.background,
              ),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyGradientButton(
                  label: MyStrings.postAd,
                  onTap: () {
                    context.router.push(
                      const PostEditorScreen(),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
