import 'package:flutter/material.dart';
import 'package:teambey_org/presentation/chat/pages/mobile_view.dart';
import 'package:teambey_org/presentation/chat/pages/web_view.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 700) {
        return const WebView();
      } else {
        return const MobileView();
      }
    });
  }
}
