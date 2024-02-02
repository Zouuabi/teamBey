import 'package:flutter/material.dart';
import 'package:teambey_org/core/route/route_generator.dart';
import 'package:teambey_org/presentation/profile/widgets/profile_picture.dart';

class CreateProject extends StatelessWidget {
  const CreateProject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProfilePicture(image: Image.asset('assets/images/profile.png')),
          const SizedBox(width: 20),
          OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteGenerator.postPoroject);
              },
              child: const Text('Create Project'))
        ],
      ),
    );
  }
}
