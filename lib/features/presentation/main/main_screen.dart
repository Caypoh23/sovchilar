// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:sovchilar/features/presentation/home/home_screen.dart';
import 'package:sovchilar/features/presentation/profile/profile_screen.dart';
import 'package:sovchilar/utils/generic_bloc_state.dart';
import 'bloc/main_bloc.dart';
import 'widgets/bottom_navigation_bar.dart';

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
  Widget build(BuildContext context) {
    final bloc = context.read<MainBloc>();

    return BlocBuilder<MainBloc, GenericBlocState<int>>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: bloc.onWillPop,
          child: Scaffold(
            extendBody: true,
            body: IndexedStack(
              index: state.data!,
              children: const [
                HomeScreen(),
                ProfileScreen(),
              ],
            ),
            bottomNavigationBar: const MainBottomNavigationBar(),
          ),
        );
      },
    );
  }
}
