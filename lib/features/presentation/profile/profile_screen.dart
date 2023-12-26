// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:sovchilar/config/router/app_router.gr.dart';
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/custom_widgets/buttons/gradient_button.dart';
import 'package:sovchilar/features/presentation/payment/cubit/payment_cubit.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  //
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //

  @override
  void initState() {
    super.initState();
    context.read<PaymentCubit>().onFetchPrice();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 16,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  context.router.push(const LanguageRoute());
                },
                child: Icon(
                  Icons.language,
                  color: Theme.of(context).colorScheme.background,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyGradientButton(
                    label: MyStrings.postAd,
                    onTap: () {
                      context.router.push(
                        const PostEditorRoute(),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  MyGradientButton(
                    label: MyStrings.myAds,
                    onTap: () {
                      context.router.push(
                        const MyAdsRoute(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
