// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:sovchilar/config/enums/children_enum.dart';
import 'package:sovchilar/config/enums/cities_enum.dart';
import 'package:sovchilar/config/enums/countries_enum.dart';
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/core/di/service_locator.dart';
import 'package:sovchilar/custom_widgets/buttons/gradient_button.dart';
import 'package:sovchilar/custom_widgets/keyboard_escape.dart';
import 'package:sovchilar/custom_widgets/text_fields/desc_text_field.dart';
import 'package:sovchilar/custom_widgets/text_fields/name_text_field.dart';
import 'package:sovchilar/custom_widgets/text_fields/number_text_field.dart';
import 'package:sovchilar/custom_widgets/text_fields/picker_text_field.dart';
import 'package:sovchilar/custom_widgets/text_fields/telegram_text_field.dart';
import 'package:sovchilar/features/data/model/user/marital_status/marital_status_enum.dart';
import 'package:sovchilar/features/presentation/post_editor/cubit/post_editor_cubit.dart';
import 'package:sovchilar/utils/generic_bloc_state.dart';
import 'widgets/gender_selector.dart';

@RoutePage()
class PostEditorScreen extends StatefulWidget {
  //
  const PostEditorScreen({super.key});

  @override
  State<PostEditorScreen> createState() => _PostEditorScreenState();
}

class _PostEditorScreenState extends State<PostEditorScreen> {
  //
  late final PostEditorCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = getIt<PostEditorCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: BlocBuilder<PostEditorCubit, PostEditorState>(
        builder: (context, state) {
          return KeyboardEscape(
            child: Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                child: Form(
                  key: cubit.formKey,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(
                      vertical: 24,
                      horizontal: 16,
                    ),
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Text(
                        MyStrings.fillFieldsBelow,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                      ),
                      const SizedBox(height: 24),
                      NameTextField(
                        labelText: MyStrings.yourName,
                        controller: cubit.nameController,
                      ),
                      const SizedBox(height: 24),
                      NumberTextField(
                        labelText: MyStrings.yourAge,
                        controller: cubit.ageController,
                      ),
                      const SizedBox(height: 24),
                      const GenderSelectorWidget(),
                      const SizedBox(height: 24),
                      NameTextField(
                        labelText: MyStrings.nationality,
                        controller: cubit.nationalityController,
                      ),
                      const SizedBox(height: 24),
                      PickerTextField(
                        labelText: MyStrings.familyStatus,
                        onChanged: (value) {
                          cubit.onMaritalStatusChanged(
                            MaritalStatus.values.firstWhere(
                              (element) => element.name == value,
                            ),
                          );
                        },
                        items: MaritalStatus.values.map((e) => e.name).toList(),
                      ),
                      const SizedBox(height: 24),
                      PickerTextField(
                        onChanged: (value) {
                          cubit.onChildrenChanged(
                            ChildrenEnum.values
                                .firstWhere((element) => element.name == value)
                                .hasChildren,
                          );
                        },
                        labelText: MyStrings.children,
                        items: ChildrenEnum.values.map((e) => e.name).toList(),
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
                            child: NumberTextField(
                              labelText: MyStrings.from,
                              controller: cubit.fromController,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: NumberTextField(
                              labelText: MyStrings.to,
                              controller: cubit.toController,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      TelegramTextField(
                        controller: cubit.telegramController,
                      ),
                      const SizedBox(height: 24),
                      PickerTextField(
                        labelText: MyStrings.country,
                        onChanged: (value) {
                          cubit.onCountryChanged(
                            CountriesEnum.values.firstWhere(
                              (element) => element.name == value,
                            ),
                          );
                        },
                        items: CountriesEnum.values.map((e) => e.name).toList(),
                      ),
                      const SizedBox(height: 24),
                      PickerTextField(
                        labelText: MyStrings.city,
                        onChanged: (value) {
                          cubit.onCityChanged(
                            CitiesEnum.values.firstWhere(
                              (element) => element.name == value,
                            ),
                          );
                        },
                        items: CitiesEnum.values.map((e) => e.name).toList(),
                      ),
                      const SizedBox(height: 24),
                      DescTextField(
                        controller: cubit.additionalInfoController,
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyGradientButton(
                            onTap: cubit.onPayPressed,
                            isLoading: state.status == Status.loading,
                            label: '${MyStrings.pay} ${cubit.price} UZS',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
