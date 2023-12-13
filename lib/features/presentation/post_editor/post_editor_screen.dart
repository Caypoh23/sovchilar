// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/core/di/service_locator.dart';
import 'package:sovchilar/custom_widgets/buttons/gradient_button.dart';
import 'package:sovchilar/custom_widgets/keyboard_escape.dart';
import 'package:sovchilar/custom_widgets/text_fields/age_text_field.dart';
import 'package:sovchilar/custom_widgets/text_fields/desc_text_field.dart';
import 'package:sovchilar/custom_widgets/text_fields/name_text_field.dart';
import 'package:sovchilar/custom_widgets/text_fields/picker_text_field.dart';
import 'package:sovchilar/features/presentation/post_editor/cubit/post_editor_cubit.dart';
import 'widgets/gender_selector.dart';

@RoutePage()
class PostEditorScreen extends StatelessWidget {
  //
  const PostEditorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = getIt<PostEditorCubit>();

    return BlocProvider(
      create: (context) => cubit,
      child: BlocBuilder<PostEditorCubit, PostEditorState>(
        builder: (context, state) {
          return KeyboardEscape(
            child: Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                child: ListView(
                  padding: const EdgeInsets.symmetric(
                    vertical: 24,
                    horizontal: 16,
                  ),
                  children: [
                    Text(
                      MyStrings.fillFieldsBelow,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    ),
                    const SizedBox(height: 24),
                    NameTextField(
                      labelText: MyStrings.yourName,
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 24),
                    AgeTextField(
                      labelText: MyStrings.yourAge,
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 24),
                    const GenderSelectorWidget(),
                    const SizedBox(height: 24),
                    NameTextField(
                      labelText: MyStrings.nationality,
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 24),
                    PickerTextField(
                      labelText: MyStrings.familyStatus,
                      onTap: () {},
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 24),
                    PickerTextField(
                      labelText: MyStrings.children,
                      onTap: () {},
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      MyStrings.ageLimit,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 14,
                          ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: AgeTextField(
                            labelText: MyStrings.from,
                            controller: TextEditingController(),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: AgeTextField(
                            labelText: MyStrings.to,
                            controller: TextEditingController(),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    PickerTextField(
                      labelText: MyStrings.country,
                      onTap: () {},
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 24),
                    PickerTextField(
                      labelText: MyStrings.city,
                      onTap: () {},
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 24),
                    DescTextField(
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyGradientButton(
                          label: '${MyStrings.pay} ${cubit.price} UZS',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
