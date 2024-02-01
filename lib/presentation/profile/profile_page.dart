import 'package:flutter/material.dart';
import 'package:teambey_org/presentation/shared/widgets/web_layout.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 700) {
        return const WebLayout(body: Center(child: Text('Profile Page')));
      } else {
        return Scaffold(
            appBar: AppBar(), body: const Center(child: Text('Profile Page')));
      }
    });
  }
}
