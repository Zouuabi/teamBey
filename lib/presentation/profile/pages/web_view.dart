import 'package:flutter/material.dart';
import 'package:teambey_org/presentation/profile/widgets/profile.dart';
import 'package:teambey_org/presentation/shared/widgets/web_layout.dart';

class WebView extends StatelessWidget {
  const WebView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const WebLayout(
        body: Row(children: [
      Expanded(flex: 2, child: Profile()),
      Expanded(
          child: Center(
        child: Text('Other section'),
      ))
    ]));
  }
}
