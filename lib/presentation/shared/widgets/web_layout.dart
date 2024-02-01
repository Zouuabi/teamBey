import 'package:flutter/material.dart';

import 'navigation_bar.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({super.key, required this.body});
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      physics: const NeverScrollableScrollPhysics(),
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [const NavBar()];
      },
      body: Scaffold(
        body: body,
      ),
    );
  }
}
