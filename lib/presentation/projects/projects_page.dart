import 'package:flutter/material.dart';
import 'package:teambey_org/presentation/post_project/post_project_page.dart';
import 'package:teambey_org/presentation/shared/widgets/buttom_nav_bar.dart';
import 'package:teambey_org/presentation/shared/widgets/web_layout.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 700) {
        return const WebLayout(body: RahaNafsya());
      } else {
        return const Scaffold(
            body: Column(
          children: [Expanded(child: RahaNafsya()), BottomNavBar(index: 1)],
        ));
      }
    });
  }
}
