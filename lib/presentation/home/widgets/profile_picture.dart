import 'package:flutter/material.dart';
import 'package:teambey_org/core/route/route_generator.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
    required this.image,
  });

  final Widget image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacementNamed(RouteGenerator.profile);
      },
      child: CircleAvatar(
        child: image,
      ),
    );
  }
}
