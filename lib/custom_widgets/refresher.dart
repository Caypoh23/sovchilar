// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MyRefresher extends StatefulWidget {
  //
  final Widget child;
  final void Function()? onRefresh;
  final ScrollController? scrollController;

  const MyRefresher({
    super.key,
    required this.child,
    required this.onRefresh,
    //
    this.scrollController,
  });

  @override
  State<MyRefresher> createState() => _MyRefresherState();
}

class _MyRefresherState extends State<MyRefresher> {
  //

  late final RefreshController controller;

  @override
  void initState() {
    super.initState();
    controller = RefreshController();
  }

  void updateState() => {if (mounted) setState(() {})};

  @override
  Widget build(BuildContext context) {
    if (widget.onRefresh == null) return widget.child;

    return SmartRefresher(
      enablePullDown: true,
      enableTwoLevel: true,
      onRefresh: () {
        widget.onRefresh?.call();
        controller.refreshCompleted();
      },
      controller: controller,
      scrollController: widget.scrollController,
      header: const WaterDropMaterialHeader(
        backgroundColor: Colors.white,
        color: Colors.black,
      ),
      child: widget.child,
    );
  }
}
