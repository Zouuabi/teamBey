import 'package:flutter/material.dart';
import 'package:teambey_org/presentation/home/widgets/widgets.dart';

class Feed extends StatelessWidget {
  const Feed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              if (index == 0) {
                return const CreateProject();
              }
              return const ProjectItem();
            })
      ],
    );
  }
}
