import 'package:flutter/material.dart';
import 'package:teambey_org/presentation/home/widgets/feed.dart';
import 'package:teambey_org/presentation/shared/widgets/web_layout.dart';

class WebView extends StatelessWidget {
  const WebView({super.key});

  @override
  Widget build(BuildContext context) {
    return WebLayout(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: double.infinity,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              child: const Center(child: Text('Section 1')),
            ),
          ),
          const Expanded(flex: 4, child: Feed()),
          Expanded(
            flex: 2,
            child: Container(
              height: double.infinity,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              child: const Center(child: Text('Section 1')),
            ),
          ),
        ],
      ),
    );
  }
}
