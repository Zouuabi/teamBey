import 'package:flutter/material.dart';
import 'package:teambey_org/core/route/route_generator.dart';
import 'package:teambey_org/presentation/profile/widgets/profile_picture.dart';

class ConversationItem extends StatelessWidget {
  const ConversationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const ProfilePicture(image: Icon(Icons.person)),
      title: const Text('User/Group Name'),
      subtitle: const Text('Sent 5h ago'),
      onTap: () {
        // navigate to conversation by ID
        Navigator.of(context).pushNamed(RouteGenerator.conversation);
      },
    );
  }
}
