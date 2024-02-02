import 'package:flutter/material.dart';

class SearchBarz extends StatelessWidget {
  const SearchBarz({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      controller: TextEditingController(),
      leading: const Icon(Icons.search),
      trailing: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.filter_list))
      ],
      hintText: 'Search for projects',
    );
  }
}
