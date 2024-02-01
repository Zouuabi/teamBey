import 'package:flutter/material.dart';
import 'package:teambey_org/presentation/home/widgets/widgets.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: ProfilePicture(
                  image: Image.asset('assets/images/profile.png')),
              title: Text(
                'UserName',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              subtitle: Text(
                '1 min',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            Text(
              'Project Title ',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  child: Text(
                    'Description',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.teal),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  'Prototype',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              ),
              child: Text(
                "this text is just for  debugging purposes only and  sdfdssd sdf sdfaze afdth fhcvezt sfae hreet azecv sdf d    with dfsd ksdfkj kdjdsfjk skdfjfk sdfk jskdlj sdf dsfj ",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Row(children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.thumb_up)),
                  Text(
                    '27k',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ]),
                const SizedBox(width: 10),
                Row(children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.comment)),
                  Text(
                    '5k',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ]),
                const Spacer(),
                OutlinedButton(
                    onPressed: () {}, child: const Text('Request Join')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
