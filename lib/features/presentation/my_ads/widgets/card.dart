// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/custom_widgets/cards/info_card.dart';
import 'package:sovchilar/features/data/model/user/response/ad_response_model.dart';
import 'package:sovchilar/utils/url_helper.dart';
import 'item.dart';

class MyAdsCard extends StatelessWidget {
  //
  final AdResponseModel model;

  const MyAdsCard({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return MyInfoCard(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      children: [
        MyAdsItem(
          title: '${MyStrings.name}/${MyStrings.age}',
          description: model.nameAge,
        ),
        const SizedBox(height: 10),
        MyAdsItem(
          title: MyStrings.residency,
          description: model.address,
        ),
        const SizedBox(height: 10),
        MyAdsItem(
          title: MyStrings.nationality,
          description: model.nationality ?? '',
        ),
        const SizedBox(height: 10),
        MyAdsItem(
          title: '${MyStrings.familyStatus}/${MyStrings.children}',
          description: model.maritalChildrenStatus,
        ),
        const SizedBox(height: 10),
        MyAdsItem(
          title: MyStrings.ageLimit,
          description: model.ageLimit,
        ),
        const SizedBox(height: 10),
        if (model.moreInfo?.isNotEmpty ?? false) ...[
          MyAdsItem(
            title: MyStrings.additionalInfo,
            description: model.moreInfo ?? '',
          ),
          const SizedBox(height: 10),
        ],
        MyAdsItem(
          title: MyStrings.telegram,
          description: model.telegram?.startsWith(RegExp(r'^\+|[0-9]')) ?? false
              ? 't.me/${model.telegram}'
              : '${model.telegram}',
          onTap: () => MyUrlLauncher.telegram('${model.telegram}'),
        ),
        const SizedBox(height: 10),
        MyAdsItem(
          title: MyStrings.status,
          description: model.moderated ?? false
              ? MyStrings.published
              : MyStrings.inModeration,
        ),

        // TODO: delete button
      ],
    );
  }
}
