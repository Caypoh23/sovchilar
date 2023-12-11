// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:sovchilar/config/assets/icon_constants.dart';
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/custom_widgets/cards/info_card.dart';
import 'package:sovchilar/features/data/model/user/user_response/user_response_model.dart';
import 'package:sovchilar/utils/url_helper.dart';
import 'item.dart';

class HomeCard extends StatelessWidget {
  //
  final UserResponseModel model;

  const HomeCard({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MyInfoCard(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(0, 16, 0, 24),
          children: [
            HomeItem(
              title: '${MyStrings.name}/${MyStrings.age}',
              description: model.nameAge,
            ),
            const SizedBox(height: 10),
            HomeItem(
              title: MyStrings.residency,
              description: model.address,
            ),
            const SizedBox(height: 10),
            HomeItem(
              title: MyStrings.nationality,
              description: model.nationality ?? '',
            ),
            const SizedBox(height: 10),
            HomeItem(
              title: '${MyStrings.familyStatus}/${MyStrings.children}',
              description: model.maritalChildrenStatus,
            ),
            const SizedBox(height: 10),
            HomeItem(
              title: MyStrings.ageLimit,
              description: model.ageLimit,
            ),
            const SizedBox(height: 10),
            HomeItem(
              title: MyStrings.additionalInfo,
              description: model.moreInfo ?? '',
            ),
            const SizedBox(height: 10),
            HomeItem(
              title: MyStrings.telegram,
              description: model.telegram ?? '',
              onTap: () => MyUrlLauncher.telegram('${model.telegram}'),
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: SvgPicture.asset(
            MyIcons.telegram,
          ),
        )
      ],
    );
  }
}
