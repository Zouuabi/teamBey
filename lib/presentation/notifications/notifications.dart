import 'dart:math';

import 'package:flutter/material.dart';
import 'package:teambey_org/presentation/shared/widgets/buttom_nav_bar.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                  final int time = Random().nextInt(60);
                  return ListTile(
                    title: Text('Notification No $index'),
                    subtitle: const Text('someone has post a project '),
                    trailing: Text('$time min ago'),
                    onTap: () {},
                  );
                }),
          ),
          const BottomNavBar(index: 3)
        ],
      ),
    );
  }
}
