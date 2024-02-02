import 'package:flutter/material.dart';
import 'package:teambey_org/core/route/route_generator.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.of(context).pushReplacementNamed(RouteGenerator.home);
            break;
          case 1:
            Navigator.of(context).pushReplacementNamed(RouteGenerator.projects);
            break;
          case 2:
            Navigator.of(context)
                .pushReplacementNamed(RouteGenerator.postPoroject);
            break;
          case 3:
            Navigator.of(context)
                .pushReplacementNamed(RouteGenerator.notifications);
            break;
          case 4:
            Navigator.of(context).pushReplacementNamed(RouteGenerator.profile);
            break;
        }
      },
      elevation: 2,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.teal,
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
    );
  }
}
