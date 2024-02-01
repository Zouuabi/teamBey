import 'package:flutter/material.dart';

import 'package:teambey_org/presentation/shared/widgets/web_layout.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 700) {
        return const WebLayout(body: Center(child: Text('Notifications page')));
      } else {
        return const Center(child: Text('Notifications page'));
      }
    });
  }
}
