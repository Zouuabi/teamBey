import 'package:flutter/material.dart';
import 'package:teambey_org/presentation/home/pages/mobile_view.dart';
import 'package:teambey_org/presentation/home/pages/web_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: ((context, constraints) {
        if (constraints.maxWidth > 700) {
          return const WebView();
        } else {
          return const MobileView();
        }
      })),
    );
  }
}
