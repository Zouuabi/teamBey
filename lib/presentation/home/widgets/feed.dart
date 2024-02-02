import 'package:flutter/material.dart';
import 'package:teambey_org/presentation/home/widgets/widgets.dart';

class Feed extends StatefulWidget {
  const Feed({
    super.key,
  });

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController =
        ScrollController(keepScrollOffset: true, initialScrollOffset: 2.0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverList.builder(
            itemCount: 10,
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
