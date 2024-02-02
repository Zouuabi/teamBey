import 'package:flutter/material.dart';
import 'package:teambey_org/core/route/route_generator.dart';
import 'package:teambey_org/presentation/home/widgets/widgets.dart';
import 'package:teambey_org/presentation/notifications/notifications.dart';
import 'package:teambey_org/presentation/post_project/post_project_page.dart';
import 'package:teambey_org/presentation/profile/pages/profile_page.dart';
import 'package:teambey_org/presentation/projects/projects_page.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  int _currentIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (context, _) => [
                    SliverAppBar(
                      automaticallyImplyLeading: false,
                      title: Row(children: [
                        const Expanded(flex: 4, child: SearchBarz()),
                        Expanded(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(RouteGenerator.chat);
                                },
                                icon: const Icon(
                                    Icons.messenger_outline_rounded)))
                      ]),
                    )
                  ],
              body: const Feed()),
          const ProjectsPage(),
          const PostProjectPage(),
          const NotificationsPage(),
          const ProfilePage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        elevation: 2,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.teal,
        onTap: (value) {
          _pageController.jumpToPage(value);
          setState(() {
            _currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.work_outline), label: 'Projects'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: 'Create'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_3_outlined), label: 'Profile'),
        ],
      ),
    );
  }
}
