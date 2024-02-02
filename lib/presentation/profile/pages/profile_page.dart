import 'package:flutter/material.dart';

import 'package:teambey_org/presentation/profile/pages/mobile_view.dart';
import 'package:teambey_org/presentation/profile/pages/web_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 700) {
        return const WebView();
      } else {
        return const MobileView();
      }
    });
  }
}
