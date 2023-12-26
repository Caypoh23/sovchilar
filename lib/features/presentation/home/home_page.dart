// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/custom_widgets/tab_bar.dart';
import 'pages/men/men_page.dart';
import 'pages/women/women_page.dart';

class HomePage extends StatefulWidget {
  //
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
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
    return Scaffold(
      body: SafeArea(
        child: Column(
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
