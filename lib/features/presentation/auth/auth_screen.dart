// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/core/di/service_locator.dart';
import 'package:sovchilar/custom_widgets/buttons/gradient_button.dart';
import 'package:sovchilar/custom_widgets/expanded_section.dart';
import 'package:sovchilar/custom_widgets/keyboard_escape.dart';
import 'package:sovchilar/custom_widgets/text_fields/password_text_field.dart';
import 'package:sovchilar/custom_widgets/text_fields/phone_text_field.dart';
import 'package:sovchilar/custom_widgets/text_fields/picker_text_field.dart';
import 'package:sovchilar/custom_widgets/text_fields/telegram_text_field.dart';
import 'package:sovchilar/features/presentation/auth/cubit/auth_cubit.dart';
import 'package:sovchilar/utils/generic_bloc_state.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  //
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = getIt<AuthCubit>();

    return BlocProvider(
      create: (context) => cubit,
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          final authType = state.authType;

          return KeyboardEscape(
            child: Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PickerTextField(
                        labelText: MyStrings.authType,
                        onChanged: (type) {
                          cubit.onAuthTypeChanged(
                            AuthType.values.firstWhere(
                              (element) => element.name == type,
                            ),
                          );
                        },
                        items: AuthType.values.map((e) => e.name).toList(),
                      ),
                      ExpandedSection(
                        expand: authType != null,
                        child: Column(
                          children: [
                            const SizedBox(height: 24),
                            state.authType == AuthType.telegram
                                ? TelegramTextField(
                                    controller: cubit.usernameController,
                                  )
                                : PhoneTextField(
                                    controller: cubit.usernameController,
                                  ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      PasswordTextField(
                        controller: cubit.passwordController,
                      ),
                      const SizedBox(height: 24),
                      MyGradientButton(
                        onTap: cubit.login,
                        label: MyStrings.loginOrSignUp,
                        isLoading: state.status == Status.loading,
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
