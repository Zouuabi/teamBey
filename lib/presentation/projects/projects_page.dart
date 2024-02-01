import 'package:flutter/material.dart';
import 'package:teambey_org/presentation/shared/widgets/web_layout.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 700) {
        return const WebLayout(
            body: Center(
                child: Text(
          'projects Screen',
        )));
      } else {
        return Scaffold(
            appBar: AppBar(),
            body: const Center(child: Text('projects Screen')));
      }
    });
  }
}
