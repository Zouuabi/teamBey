import 'package:flutter/material.dart';
import 'package:teambey_org/core/route/route_generator.dart';
import 'package:teambey_org/core/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TeamBey',
      theme: TeamBeyTheme.defaultTheme(),
      initialRoute: RouteGenerator.home,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
