// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:sovchilar/config/assets/icon_constants.dart';
import 'package:sovchilar/config/values/duration_constants.dart';
import 'package:sovchilar/custom_widgets/buttons/default_ink_well.dart';
import 'package:sovchilar/features/presentation/language/cubit/language_cubit.dart';

class LanguageItem extends StatelessWidget {
  //
  final ProfileLanguage lang;

  const LanguageItem({
    super.key,
    required this.lang,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LanguageCubit>();

    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        return MyInkWell(
          onTap: () => cubit.setLang(lang),
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              AnimatedSwitcher(
                duration: MyDurations.ms250,
                child: SvgPicture.asset(
                  lang == state.lang ? MyIcons.radioOn : MyIcons.radioOff,
                  height: 20,
                  width: 20,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                lang.title,
              ),
            ],
          ),
        );
      },
    );
  }
}
