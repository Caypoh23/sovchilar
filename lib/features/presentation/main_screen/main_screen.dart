// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:sovchilar/utils/generic_bloc_state.dart';
import 'bloc/main_screen_bloc.dart';
import 'bloc/main_screen_event.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  //
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MainScreenBloc>();

    return BlocBuilder<MainScreenBloc, GenericBlocState<int>>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: bloc.onWillPop,
          child: Scaffold(
            extendBody: true,
            body: const Center(
              child: Text(
                'Hello World',
              ),
            ),
            bottomNavigationBar: NavigationBar(
              backgroundColor: Colors.white,
              surfaceTintColor: Theme.of(context).colorScheme.primary,
              indicatorColor: Theme.of(context).colorScheme.secondary,
              shadowColor: Colors.black.withOpacity(0.1),
              onDestinationSelected: (int index) => bloc.add(
                OnItemPressed(newIndex: index),
              ),
              selectedIndex: state.data!,
              destinations: const [
                NavigationDestination(
                  selectedIcon: Icon(Icons.home_max_outlined),
                  icon: Icon(Icons.home_max_outlined),
                  label: '',
                ),
                NavigationDestination(
                  selectedIcon: Icon(Icons.person_outline),
                  icon: Icon(Icons.person_outline),
                  label: '',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
