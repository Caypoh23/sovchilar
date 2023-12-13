// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:sovchilar/config/router/navigation_service.dart';
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/core/di/service_locator.dart';
import 'package:sovchilar/custom_widgets/app_bar/app_bar.dart';
import 'package:sovchilar/custom_widgets/buttons/gradient_button.dart';
import 'cubit/language_cubit.dart';
import 'widgets/item.dart';

@RoutePage()
class LanguageScreen extends StatelessWidget {
  //
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LanguageCubit>(),
      child: BlocBuilder<LanguageCubit, LanguageState>(
        builder: (context, state) {
          const list = ProfileLanguage.values;

          return Scaffold(
            backgroundColor: Colors.white,
            appBar: MyAppBar(
              title: MyStrings.chooseLanguage,
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: list.length,
                    padding: const EdgeInsets.symmetric(
                      vertical: 24,
                    ),
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (_, index) {
                      final lang = list[index];

                      return LanguageItem(
                        lang: lang,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 24),
                MyGradientButton(
                  label: MyStrings.save,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  onTap: () {
                    context.read<LanguageCubit>().onSavePressed();
                    context.router.pop();
                    getIt<NavigationService>()
                        .updateLocale(state.lang!.name, context);
                  },
                ),
                const SafeArea(
                  child: SizedBox(height: 16),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
