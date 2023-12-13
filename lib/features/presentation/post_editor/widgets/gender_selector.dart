// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/custom_widgets/default_check_box.dart';
import 'package:sovchilar/features/data/model/user/gender/gender_enum.dart';
import 'package:sovchilar/features/presentation/post_editor/cubit/post_editor_cubit.dart';

class GenderSelectorWidget extends StatelessWidget {
  //
  const GenderSelectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PostEditorCubit>();

    return BlocBuilder<PostEditorCubit, PostEditorState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              MyStrings.yourSex,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                MyCheckbox(
                  isChecked: state.gender == Gender.male,
                  label: MyStrings.man,
                  onChanged: (value) {
                    if (value ?? false) {
                      cubit.onGenderChanged(Gender.male);
                    }
                  },
                ),
                const SizedBox(width: 24),
                MyCheckbox(
                  isChecked: state.gender == Gender.female,
                  label: MyStrings.woman,
                  onChanged: (value) {
                    if (value ?? false) {
                      cubit.onGenderChanged(Gender.female);
                    }
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
