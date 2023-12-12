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

class HomeMenPage extends StatelessWidget {
  //
  const HomeMenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final list =
            state.userList.where((user) => user.gender == Gender.male).toList();

        return MyRefresher(
          onRefresh: () => context.read<HomeBloc>().add(OnFetchUsers()),
          child: ListView.builder(
            itemCount: list.length,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            itemBuilder: (_, int index) {
              final model = list[index];

              return HomeCard(
                model: model,
              );
            },
          ),
        );
      },
    );
  }
}
