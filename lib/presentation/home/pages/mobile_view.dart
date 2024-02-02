import 'package:flutter/material.dart';

import 'package:teambey_org/core/route/route_generator.dart';
import 'package:teambey_org/presentation/home/widgets/widgets.dart';
import 'package:teambey_org/presentation/shared/widgets/buttom_nav_bar.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
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
                            icon: const Icon(Icons.messenger_outline_rounded)))
                  ]),
                )
              ],
          body: const Column(
            children: [
              Expanded(child: Feed()),
              BottomNavBar(index: 0),
            ],
          )),
    );
  }
}
