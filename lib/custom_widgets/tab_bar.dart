// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:sovchilar/config/values/gradient_constants.dart';

class MyTabBar extends StatelessWidget {
  //
  final Function(int)? onTap;

  final List<String> tabLabels;

  final TabController tabController;

  final EdgeInsets margin;

  const MyTabBar({
    super.key,
    required this.tabLabels,
    required this.tabController,
    //
    this.margin = EdgeInsets.zero,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Colors.white,
            ),
          ),
          child: TabBar(
            onTap: onTap,
            padding: EdgeInsets.zero,
            controller: tabController,
            labelColor: Colors.white,
            labelPadding: EdgeInsets.zero,
            indicatorColor: Colors.white,
            indicatorPadding: EdgeInsets.zero,
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
              gradient: MyGradients.primary,
              borderRadius: BorderRadius.circular(16),
            ),
            splashBorderRadius: BorderRadius.circular(16),
            labelStyle: Theme.of(context).textTheme.bodyMedium,
            unselectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            tabs: tabLabels.map((item) => Tab(text: item, height: 45)).toList(),
          ),
        ),
      ),
    );
  }
}
