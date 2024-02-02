import 'package:flutter/material.dart';

import 'package:teambey_org/presentation/chat/widgets/conversation_list.dart';
import 'package:teambey_org/presentation/shared/widgets/web_layout.dart';

class WebView extends StatelessWidget {
  const WebView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WebLayout(
        body: Row(
      children: [
        Expanded(flex: 2, child: Container()),
        const Expanded(
          flex: 4,
          child: ConversationsList(),
        ),
        Expanded(flex: 2, child: Container())
      ],
    ));
  }
}
