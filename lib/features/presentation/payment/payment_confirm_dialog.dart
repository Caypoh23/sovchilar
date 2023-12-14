// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/custom_widgets/buttons/gradient_button.dart';
import 'package:sovchilar/custom_widgets/keyboard_escape.dart';
import 'package:sovchilar/custom_widgets/text_fields/code_text_field.dart';
import 'package:sovchilar/utils/generic_bloc_state.dart';
import 'package:sovchilar/utils/media_helper.dart';
import 'cubit/payment_cubit.dart';

class PaymentConfirmDialog extends StatelessWidget {
  //

  const PaymentConfirmDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PaymentCubit>();

    return BlocBuilder<PaymentCubit, PaymentState>(
      builder: (context, state) {
        return KeyboardEscape(
          child: Container(
            width: MediaHelper.width * 0.8,
            height: MediaHelper.height * 0.35,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Form(
              key: cubit.codeFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${MyStrings.confirmCodeDesc} ${state.payment?.otpSentPhone ?? ''}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: CodeTextField(
                      controller: cubit.confirmCodeController,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyGradientButton(
                        onTap: cubit.confirm,
                        label: MyStrings.confirm,
                        isLoading: state.status == Status.loading,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
