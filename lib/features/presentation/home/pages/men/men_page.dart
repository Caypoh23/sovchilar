// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:sovchilar/custom_widgets/refresher.dart';
import 'package:sovchilar/features/presentation/home/widgets/card.dart';

class HomeMenPage extends StatelessWidget {
  //
  const HomeMenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyRefresher(
      onRefresh: () {},
      child: ListView.builder(
        itemCount: 10,
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        itemBuilder: (_, int index) {
          return const HomeCard(
            name: 'name',
            address: 'sadf',
            nationality: 'afsd',
            familyStatus: 'asfd',
            ageLimit: 'fdsa',
            additionalInfo: 'asdf',
            telegram: '@123',
          );
        },
      ),
    );
  }
}
