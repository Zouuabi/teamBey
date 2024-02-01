import 'package:flutter/material.dart';
import 'package:teambey_org/core/route/route_generator.dart';
import 'package:teambey_org/presentation/home/widgets/widgets.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      automaticallyImplyLeading: false,
      title: Row(children: [
        Expanded(
          child:
              ProfilePicture(image: Image.asset('assets/images/profile.png')),
        ),
        const Expanded(
          flex: 3,
          child: SearchBarz(),
        ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                tooltip: 'Home',
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(RouteGenerator.home);
                },
                icon: const Icon(Icons.home_filled),
              ),
              IconButton(
                tooltip: 'Projects',
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(RouteGenerator.projects);
                },
                icon: const Icon(Icons.work),
              ),
              IconButton(
                  tooltip: 'Chat',
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(RouteGenerator.chat);
                  },
                  icon: const Icon(Icons.messenger)),
              PopupMenuButton<String>(
                offset: const Offset(0, 25),
                tooltip: 'Notifications',
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(
                        child: Text(
                            'notificaiton 1  zedu it udks dfliut dfjot tids  dggsdg sgd')),
                    const PopupMenuDivider(),
                    const PopupMenuItem(
                        child: Text(
                            'notificaiton 2  zedu it udks dfliut dfjot tids  dggsdg sgd')),
                    const PopupMenuDivider(),
                    const PopupMenuItem(
                        child: Text(
                            'notificaiton 3  zedu it udks dfliut dfjot tids  dggsdg sgd')),
                    const PopupMenuDivider(),
                  ];
                },
                child: const Icon(Icons.notifications),
              ),
            ],
          ),
        )
      ]),
      elevation: 2,
    );
  }
}
