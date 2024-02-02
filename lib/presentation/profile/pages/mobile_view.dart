import 'package:flutter/material.dart';

import 'package:teambey_org/presentation/profile/widgets/profile.dart';
import 'package:teambey_org/presentation/shared/widgets/buttom_nav_bar.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Expanded(child: Profile()), BottomNavBar(index: 4)],
      ),
    );
  }
}
