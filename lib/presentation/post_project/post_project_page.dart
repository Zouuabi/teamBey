import 'package:flutter/material.dart';

import 'package:teambey_org/presentation/shared/widgets/web_layout.dart';

class PostProjectPage extends StatelessWidget {
  const PostProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 700) {
        return const WebLayout(body: Center(child: Text('Post project page')));
      } else {
        return Scaffold(
            appBar: AppBar(),
            body: const Center(child: Text('Post project page')));
      }
    });
  }
}
