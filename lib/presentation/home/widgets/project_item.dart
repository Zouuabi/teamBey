import 'dart:math';

import 'package:flutter/material.dart';
import 'package:teambey_org/presentation/home/widgets/widgets.dart';

class ProjectItem extends StatefulWidget {
  const ProjectItem({
    super.key,
  });

  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  // For Ui Testing
  bool isLiked = false;
  int likes = Random().nextInt(900);
  int comments = Random().nextInt(900);
  int time = Random().nextInt(60);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 6,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: ProfilePicture(
                    image: Image.asset('assets/images/profile.png')),
                title: Text(
                  'Oubeid zouabi',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                subtitle: Text(
                  '$time min',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              Text(
                'TeamBey project - Collaboration platform',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Divider(),
              const Text(
                'Teambey is a non-profit collaboration platformfostering a professional environment for project creation, team formation, and project management. It encourages adherence to industry standards and provides a unified space for users to connect and collaborate.needed roles :\n- Flutter dev\n- React dev\n- Backend dev\n- Designer',
                textAlign: TextAlign.left,
              ),
              const Divider(),
              Row(
                children: [
                  Row(children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            // XNOR
                            if (isLiked) {
                              isLiked = false;
                              likes--;
                            } else {
                              isLiked = true;
                              likes++;
                            }
                          });
                        },
                        icon: Icon(
                          Icons.thumb_up,
                          color: isLiked ? Colors.teal : Colors.grey,
                        )),
                    Text(
                      '$likes',
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ]),
                  const SizedBox(width: 10),
                  Row(children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.comment)),
                    Text(
                      '$comments',
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ]),
                  const Spacer(),
                  OutlinedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 150,
                                    width: 300,
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Center(
                                              child: Text(
                                                'Request has been sent to the team leader',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: const Text('Okay'))
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            });
                      },
                      child: const Text('Request Join')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
