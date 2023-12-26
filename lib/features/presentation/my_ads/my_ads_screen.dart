// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/core/di/service_locator.dart';
import 'package:sovchilar/custom_widgets/app_bar/app_bar.dart';
import 'package:sovchilar/custom_widgets/loading/loader.dart';
import 'package:sovchilar/custom_widgets/refresher.dart';
import 'package:sovchilar/features/presentation/my_ads/bloc/my_ads_event.dart';
import 'package:sovchilar/utils/generic_bloc_state.dart';
import 'bloc/my_ads_bloc.dart';
import 'widgets/card.dart';

@RoutePage()
class MyAdsScreen extends StatefulWidget {
  //
  const MyAdsScreen({super.key});

  @override
  State<MyAdsScreen> createState() => _MyAdsScreenState();
}

class _MyAdsScreenState extends State<MyAdsScreen> {
  //
  late MyAdsBloc bloc;

  @override
  void didChangeDependencies() {
    bloc = getIt<MyAdsBloc>()..add(OnFetchMyAds());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: Scaffold(
        appBar: MyAppBar(
          title: MyStrings.myAds,
        ),
        body: SafeArea(
          child: BlocBuilder<MyAdsBloc, MyAdsState>(
            builder: (context, state) {
              final list = state.myAdList;
              final isLoading = state.status == Status.loading;

              if (isLoading) return const LoaderWidget();

              if (list.isEmpty) {
                return Center(
                  child: Text(MyStrings.adListEmpty),
                );
              }

              return MyRefresher(
                onRefresh: () => context.read<MyAdsBloc>().add(OnFetchMyAds()),
                child: ListView.builder(
                  itemCount: list.length,
                  physics: const ClampingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ).copyWith(
                    top: 20,
                  ),
                  itemBuilder: (_, int index) {
                    final model = list[index];

                    return MyAdsCard(
                      model: model,
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
