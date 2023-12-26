// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:sovchilar/custom_widgets/refresher.dart';
import 'package:sovchilar/features/data/model/user/gender/gender_enum.dart';
import 'package:sovchilar/features/presentation/home/bloc/home_bloc.dart';
import 'package:sovchilar/features/presentation/home/bloc/home_event.dart';
import 'package:sovchilar/features/presentation/home/widgets/card.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';

class HomeWomenPage extends StatelessWidget {
  //
  const HomeWomenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final list =
            state.adList.where((user) => user.gender == Gender.female).toList();

        return MyRefresher(
          onRefresh: () => context.read<HomeBloc>().add(OnFetchAds()),
          child: ListView(
            padding: EdgeInsets.zero,
            physics: const ClampingScrollPhysics(),
            children: [
              AppodealBanner(
                key: UniqueKey(),
                adSize: AppodealBannerSize.BANNER,
                placement: 'female_banner',
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ).copyWith(
                  bottom: 20,
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, int index) {
                  final model = list[index];

                  return HomeCard(
                    model: model,
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
