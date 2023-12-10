// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:sovchilar/config/values/strings_constants.dart';
import 'package:sovchilar/custom_widgets/cards/info_card.dart';
import 'item.dart';

class HomeCard extends StatelessWidget {
  // TODO: pass model
  final String name;
  final String address;
  final String nationality;
  final String familyStatus;
  final String ageLimit;
  final String additionalInfo;
  final String telegram;

  const HomeCard({
    super.key,
    required this.name,
    required this.address,
    required this.nationality,
    required this.familyStatus,
    required this.ageLimit,
    required this.additionalInfo,
    required this.telegram,
  });

  @override
  Widget build(BuildContext context) {
    return MyInfoCard(
      backgroundColor: Theme.of(context).colorScheme.background,
      margin: const EdgeInsets.only(bottom: 40),
      children: [
        HomeItem(
          title: '${MyStrings.name}/${MyStrings.age}',
          description: name,
        ),
        const SizedBox(height: 10),
        HomeItem(
          title: MyStrings.residency,
          description: address,
        ),
        const SizedBox(height: 10),
        HomeItem(
          title: MyStrings.nationality,
          description: nationality,
        ),
        const SizedBox(height: 10),
        HomeItem(
          title: MyStrings.familyStatus,
          description: familyStatus,
        ),
        const SizedBox(height: 10),
        HomeItem(
          title: MyStrings.ageLimit,
          description: ageLimit,
        ),
        const SizedBox(height: 10),
        HomeItem(
          title: MyStrings.additionalInfo,
          description: additionalInfo,
        ),
        const SizedBox(height: 10),
        HomeItem(
          title: MyStrings.telegram,
          description: telegram,
          onTap: () {},
        ),
      ],
    );
  }
}
