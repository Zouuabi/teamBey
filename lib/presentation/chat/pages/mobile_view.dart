import 'package:flutter/material.dart';
import 'package:teambey_org/core/route/route_generator.dart';
import 'package:teambey_org/presentation/chat/widgets/conversation.dart';
import 'package:teambey_org/presentation/chat/widgets/conversation_list.dart';
import 'package:teambey_org/presentation/profile/widgets/profile_picture.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Chat'),
        ),
        body: const ConversationsList());
  }
}

class ConversationPage extends StatelessWidget {
  const ConversationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          leading: const ProfilePicture(image: Icon(Icons.person)),
          title: const Text('User/Group Name'),
          trailing: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(RouteGenerator.conversationSettings);
              },
              icon: const Icon(Icons.info_outline)),
        ),
      ),
      body: const Conversation(),
    );
  }
}
