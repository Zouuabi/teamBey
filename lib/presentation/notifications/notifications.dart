import 'dart:math';

import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
          final int time = Random().nextInt(60);
          return ListTile(
            title: Text('Notification No $index'),
            subtitle: const Text('someone has post a project '),
            trailing: Text('$time min ago'),
            onTap: () {},
          );
        });
  }
}
