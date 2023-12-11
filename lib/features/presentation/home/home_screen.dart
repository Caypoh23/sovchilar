// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/custom_widgets/app_bar/no_app_bar.dart';
import 'package:sovchilar/custom_widgets/tab_bar.dart';
import 'pages/men/men_page.dart';
import 'pages/women/women_page.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  //
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  //
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const MyNoAppBar(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: MyTabBar(
                tabLabels: [
                  MyStrings.women,
                  MyStrings.men,
                ],
                tabController: _tabController,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  HomeWomenPage(),
                  HomeMenPage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
