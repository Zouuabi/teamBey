import 'package:flutter/material.dart';
import 'package:teambey_org/presentation/post_project/post_project_page.dart';
import 'package:teambey_org/presentation/profile/widgets/profile_picture.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const EditableProfileAndCover(),
          Container(
              width: double.infinity,
              height: 400,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              child: const RahaNafsya())
        ],
      ),
    );
  }
}

class EditableProfileAndCover extends StatelessWidget {
  const EditableProfileAndCover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: 250,
      child: Stack(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.teal, Colors.green])),
          ),
          Positioned(
              right: 0,
              child:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.edit))),
          Positioned(
            top: 50,
            left: width * 0.15,
            child: Stack(children: [
              Column(
                children: [
                  ProfilePicture(
                    image: Image.asset('assets/images/profile.png'),
                    size: 70,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Oubeid Zouabi',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    'Mobile developer',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.edit)))
            ]),
          ),
        ],
      ),
    );
  }
}
