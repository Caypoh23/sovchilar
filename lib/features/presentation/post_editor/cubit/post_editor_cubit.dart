// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:sovchilar/utils/generic_bloc_state.dart';

part 'post_editor_state.dart';
part 'post_editor_cubit.freezed.dart';

class PostEditorCubit extends Cubit<PostEditorState> {
  // TODO: repostory

  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final nationalityController = TextEditingController();
  final familyStatusController = TextEditingController();
  final childrenController = TextEditingController();
  final fromController = TextEditingController();
  final toController = TextEditingController();
  final telegramController = TextEditingController();
  final countryController = TextEditingController();
  final cityController = TextEditingController();
  final additionalInfoController = TextEditingController();

  PostEditorCubit() : super(const PostEditorState());

  //
}
