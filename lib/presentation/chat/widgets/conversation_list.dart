import 'package:flutter/material.dart';

import 'conversation_item.dart';

class ConversationsList extends StatelessWidget {
  const ConversationsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (_, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchAnchor.bar(
                  dividerColor: Colors.teal,
                  suggestionsBuilder: (_, __) {
                    return const [
                      ConversationItem(),
                      ConversationItem(),
                      ConversationItem(),
                    ];
                  }),
            );
          }
          return const ConversationItem();
        });
  }
}
