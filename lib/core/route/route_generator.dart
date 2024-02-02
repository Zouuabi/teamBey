import 'package:flutter/material.dart';
import 'package:teambey_org/presentation/chat/pages/chat_page.dart';

import 'package:teambey_org/presentation/chat/pages/conversation_settings_page.dart';
import 'package:teambey_org/presentation/chat/pages/mobile_view.dart';
import 'package:teambey_org/presentation/home/pages/home_page.dart';
import 'package:teambey_org/presentation/notifications/notifications.dart';
import 'package:teambey_org/presentation/post_project/post_project_page.dart';
import 'package:teambey_org/presentation/profile/pages/profile_page.dart';
import 'package:teambey_org/presentation/projects/projects_page.dart';

class RouteGenerator {
  static const String home = '/home';
  static const String projects = '/projects';
  static const String postPoroject = '/postProject';
  static const String profile = '/profile';
  static const String chat = '/chat';
  static const String conversation = '/conversation';
  static const String conversationSettings = '/conversationSettings';
  static const String notifications = '/notifications';

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case profile:
        return MaterialPageRoute(builder: (context) => const ProfilePage());
      case projects:
        return MaterialPageRoute(builder: (context) => const ProjectsPage());
      case chat:
        return MaterialPageRoute(builder: (context) => const ChatPage());
      case conversation:
        return MaterialPageRoute(
            builder: (context) => const ConversationPage());

      case conversationSettings:
        return MaterialPageRoute(
            builder: (context) => const ConversationSettingsPage());

      case postPoroject:
        return MaterialPageRoute(builder: (context) => const PostProjectPage());
      case notifications:
        return MaterialPageRoute(
            builder: (context) => const NotificationsPage());

      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(child: Text('Page not found')),
                ));
    }
  }
}
