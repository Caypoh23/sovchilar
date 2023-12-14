// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:sovchilar/config/router/navigation_service.dart';
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/core/di/service_locator.dart';
import 'package:sovchilar/custom_widgets/buttons/gradient_button.dart';
import 'package:sovchilar/custom_widgets/keyboard_escape.dart';
import 'package:sovchilar/custom_widgets/text_fields/credit_card_text_field.dart';
import 'package:sovchilar/custom_widgets/text_fields/expire_date_text_field.dart';
import 'package:sovchilar/utils/generic_bloc_state.dart';
import 'package:sovchilar/utils/media_helper.dart';
import 'cubit/payment_cubit.dart';

class PaymentDialog extends StatelessWidget {
  //
  const PaymentDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PaymentCubit>();

    return BlocBuilder<PaymentCubit, PaymentState>(
      builder: (context, state) {
        return KeyboardEscape(
          child: Container(
            width: MediaHelper.width * 0.8,
            height: MediaHelper.height * 0.45,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Form(
              key: cubit.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CreditCardTextField(
                    controller: cubit.cardNumberController,
                  ),
                  const SizedBox(height: 24),
                  ExpireDateTextField(
                    controller: cubit.expireDateController,
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyGradientButton(
                        label: MyStrings.pay,
                        isLoading: state.status == Status.loading,
                        onTap: cubit.addPayment,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyGradientButton(
                        label: MyStrings.cancel,
                        onTap: getIt<NavigationService>().pop,
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
