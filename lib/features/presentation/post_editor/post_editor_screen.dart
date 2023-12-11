// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

@RoutePage()
class PostEditorScreen extends StatelessWidget {
  //
  const PostEditorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('PostEditorScreen'),
      ),
    );
  }
}
