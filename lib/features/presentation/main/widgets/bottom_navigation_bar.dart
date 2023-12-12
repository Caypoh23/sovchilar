// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:sovchilar/config/assets/icon_constants.dart';
import 'package:sovchilar/features/presentation/main/bloc/main_bloc.dart';
import 'package:sovchilar/features/presentation/main/bloc/main_event.dart';
import 'package:sovchilar/utils/generic_bloc_state.dart';
import 'bottom_navigation_item.dart';

class MainBottomNavigationBar extends StatelessWidget {
  //
  const MainBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MainBloc>();

    return BlocBuilder<MainBloc, GenericBlocState<int>>(
      builder: (context, state) {
        return Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, -5),
              ),
            ],
          ),
          child: NavigationBar(
            height: 60,
            backgroundColor: Colors.white,
            surfaceTintColor: Theme.of(context).colorScheme.primary,
            indicatorColor: Theme.of(context).colorScheme.secondary,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            onDestinationSelected: (int index) => bloc.add(
              OnItemPressed(newIndex: index),
            ),
            selectedIndex: state.data!,
            destinations: const [
              MainBottomNavigationItem(
                icon: MyIcons.home,
              ),
              MainBottomNavigationItem(
                icon: MyIcons.person,
              ),
            ],
          ),
        );
      },
    );
  }
}
