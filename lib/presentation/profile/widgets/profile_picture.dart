import 'package:flutter/material.dart';
import 'package:teambey_org/core/route/route_generator.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
    required this.image,
    this.size = 20,
  });

  final Widget image;
  final double size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushReplacementNamed(RouteGenerator.profile);
      },
      child: CircleAvatar(
        radius: size,
        child: image,
      ),
    );
  }
}
